#include <iostream>
#include <string>
#include <thread>
#include <ixwebsocket/IXNetSystem.h>
#include <ixwebsocket/IXWebSocket.h>
#include <ixwebsocket/IXUserAgent.h>
#include <iostream>
#include <algorithm>
#include <chrono>
using namespace std;

inline double vectodouble(vector<char> &vec){
    int dotind = 0;
    double res = 0.0;
    int n = vec.size();
    while(vec[++dotind] != *".")continue;
    int ovind = dotind-1;
    double valov = 1.0;
    double valund = 0.1;
    while(ovind >= 0){
        res += valov*(vec[ovind--]-'0');
        valov *= 10.0;
    }
    dotind++;
    while(dotind < n){
        res += valund*(vec[dotind++]-'0');
        valund *= 0.1;
    }
    return res;
}

int main() {
    cin.tie(NULL);
    ios_base::sync_with_stdio(false);

    struct logstr{
        vector<int> path;
        double arb;
        bool isbid;
        long long duration;
    };

    vector<string> currencies= {"BTC", "ETH", "USDT", "BNB", "SOL", "XRP", "USDC", "ADA", "AVAX", "DOGE",
    "TRX", "LINK", "DOT", "TON", "MATIC", "SHIB", "DAI", "LTC", "ICP", "BCH",
    "ETC", "UNI", "ATOM", "XLM", "INJ", "APT", "XMR", "NEAR", "OP", "TIA"};

    vector<string> currforlog = {"BTC", "ETH", "USDT", "BNB", "SOL", "XRP", "USDC", "ADA", "AVAX", "DOGE",
                "TRX", "LINK", "DOT", "TON", "MATIC", "SHIB", "DAI", "LTC", "ICP", "BCH",
                "ETC", "UNI", "ATOM", "XLM", "INJ", "APT", "XMR", "NEAR", "OP", "TIA"};

    unordered_map<string, pair<int,int>> symbollookuptable;
    vector<string> streamstofollow;
    for(int i=0; i < currencies.size();i++){
        for(int j=0; j < currencies.size(); j++){
            if(i==j)continue;
            transform(currencies[i].begin(), currencies[i].end(), currencies[i].begin(), ::tolower);
            transform(currencies[j].begin(), currencies[j].end(), currencies[j].begin(), ::tolower);
            streamstofollow.push_back(currencies[i]+currencies[j]+"@bookTicker");
            transform(currencies[i].begin(), currencies[i].end(), currencies[i].begin(), ::toupper);
            transform(currencies[j].begin(), currencies[j].end(), currencies[j].begin(), ::toupper);
            symbollookuptable[currencies[i]+currencies[j]] = make_pair(i,j);
        }
    }
    size_t socketthreads = 1;
    vector<string> socketstrs(socketthreads);
    std::string url("wss://stream.binance.com:9443/stream?streams=");

    for(int i=0; i < socketthreads; i++){
        int start = streamstofollow.size()/socketthreads * i;
        int end = streamstofollow.size()/socketthreads * (i+1);
        socketstrs[i] = url + streamstofollow[start++];
        while(start < end){
            socketstrs[i] += "/" + streamstofollow[start++];
        }
    }

    double bidrates[30][30];
    double askrates[30][30];
    int update_turn[30][30];
    for(int i=0;i< currencies.size();i++){
        for(int j=0; j < currencies.size();j++) {
            bidrates[i][j] = -1;
            askrates[i][j] = -1;
            update_turn[i][j] = 0;
        }
    }
    atomic<int64_t> bufwrite;bufwrite.store(0);
    atomic<int64_t> bufread;bufread.store(0);
    atomic<int64_t> logwrite;logwrite.store(0);
    atomic<int64_t> logread;logread.store(0);
    atomic<int64_t> timingwrite;timingwrite.store(0);
    atomic<int64_t> timingread;timingread.store(0);
    size_t buffersize = 1000;
    vector<pair<int,int>> buffer(buffersize);
    vector<logstr> logbuffer(buffersize);
    vector<chrono::high_resolution_clock::time_point> timings(buffersize);


    for(int i=0; i < currencies.size(); i++)
        for(int j=0; j < currencies.size();j++){
            bidrates[i][j] =  -1;
            askrates[i][j] = -1;
        }
    ix::initNetSystem();

    auto onmessage = [&] (const ix::WebSocketMessagePtr& msg){
        if (msg->type != ix::WebSocketMessageType::Message)return;
        auto timing = chrono::high_resolution_clock::now();
        int nails = 0;
        int msglen = msg->str.size();
        string symb = "";
        vector<char> b;b.reserve(20);
        vector<char> a;a.reserve(20);
        for(int i=0; i < msglen; i++) {
            if (msg->str[i] == *"\"") {
                nails++;
                continue;
            }
            switch (nails) {
                case 11:
                    symb += msg->str[i];
                    break;
                case 15:
                    b.push_back(msg->str[i]);
                    break;
                case 23:
                    a.push_back(msg->str[i]);
                    break;
                default:
                    break;
            }
        }
        pair<int,int> edge = symbollookuptable[symb];

        double bid = vectodouble(b);
        double ask = vectodouble(a);

        //this variable checks if at least 1 of bid and ask have changed
        //bool validchange = (bidrates[edge.first][edge.second]!=bid)|(askrates[edge.first][edge.second]!=ask);

        bidrates[edge.first][edge.second] = bid;
        askrates[edge.first][edge.second] = ask;

        //next two lines are mathematical nonsense
        bidrates[edge.second][edge.first] = 1/bid;
        askrates[edge.second][edge.first] = 1/ask;

//        market data depreciation check
//        update_turn[edge.second][edge.first] = (bufwrite)+1;
//        update_turn[edge.first][edge.second] = (bufwrite)+1;
        //if(validchange){
            buffer[(bufwrite)%buffersize] = edge;
            (++bufwrite);
            timings[(timingwrite)%buffersize] = timing;
            timingwrite++;
        //}
    };


    auto findarbs = [&](){

        while(true){
            if(bufwrite <= bufread)
                continue;

            auto edge = buffer[(bufread)%buffersize];
            bufread++;
            vector<pair<double, int>> forwcyclesask;forwcyclesask.reserve(20);
            vector<pair<double, int>>backwcyclesask;backwcyclesask.reserve(20);
            vector<pair<double, int>> forwcyclesbid;forwcyclesbid.reserve(20);
            vector<pair<double, int>>backwcyclesbid;backwcyclesbid.reserve(20);

            //checks if the data used is depreciated
            /*if(update_turn[edge.first][edge.second] < bufread){
                cerr << "old data" << endl;
            }*/

            for(int i=0; i < currencies.size(); i++){
                if(bidrates[edge.second][i] < 0)continue;
                if(bidrates[i][edge.first] < 0)continue;

                double forwbid = bidrates[edge.first][i] * bidrates[i][edge.second] * bidrates[edge.second][edge.first];
                if(forwbid > 1.00073){forwcyclesbid.push_back(make_pair(forwbid, i));}
                double forwask = askrates[edge.first][i] * askrates[i][edge.second] * askrates[edge.second][edge.first];
                if(forwask < 0.9992)forwcyclesask.push_back(make_pair(forwask, i));
                double revbid = bidrates[edge.first][edge.second] * bidrates[edge.second][i] * bidrates[i][edge.first];
                if(revbid > 1.00073)backwcyclesbid.push_back(make_pair(revbid, i));
                double revask = askrates[edge.first][edge.second] * askrates[edge.second][i] * askrates[i][edge.first];
                if(revask < 0.9992)backwcyclesask.push_back(make_pair(revask, i));
            }
            sort(forwcyclesask.begin(), forwcyclesask.end());
            sort(backwcyclesask.begin(), backwcyclesask.end());
            sort(forwcyclesbid.begin(), forwcyclesbid.end(), greater<pair<double, int>>());
            sort(backwcyclesbid.begin(), backwcyclesbid.end(), greater<pair<double, int>>());

            int max_bid = min(forwcyclesbid.size(), backwcyclesbid.size());
            int max_ask = min(forwcyclesask.size(), backwcyclesask.size());
            double bid_arb = 1.0;
            double ask_arb = 1.0;

            vector<int> bidvec;bidvec.reserve(max_bid << 2);
            vector<int> askvec;askvec.reserve(max_ask << 2);
            bidvec.push_back(edge.first);
            askvec.push_back(edge.first);

            for(int i=0; i < max_bid; i++){
                bid_arb *= forwcyclesbid[i].first;
                bidvec.push_back(forwcyclesbid[i].second);
                bidvec.push_back(edge.second);

                bid_arb *= backwcyclesbid[i].first;
                bidvec.push_back(backwcyclesbid[i].second);
                bidvec.push_back(edge.first);
            }
            for(int i=0; i < max_ask; i++){
                ask_arb *= forwcyclesask[i].first;
                askvec.push_back(forwcyclesask[i].second);
                askvec.push_back(edge.second);

                ask_arb *= backwcyclesask[i].first;
                askvec.push_back(backwcyclesask[i].second);
                askvec.push_back(edge.first);
            }

            long long duration = chrono::duration_cast<chrono::nanoseconds>(chrono::high_resolution_clock::now() - timings[(timingread)%buffersize]).count();
            timingread++;

            logbuffer[(++logwrite)%buffersize] = logstr{bidvec, bid_arb, true, duration};
            logbuffer[(++logwrite)%buffersize] = logstr{askvec, ask_arb, false, duration};
        }
    };

    auto logger = [&](){
        while(true){
            if(logwrite-500 <= logread)continue;
            auto logstr = logbuffer[(++logread)%buffersize];
            if(logstr.arb == 1){ continue;}
            if(logstr.isbid)cout << "BID : ";
            else cout << "ASK : ";
            for(int i=0; i < logstr.path.size(); i++){
                cout << currforlog[logstr.path[i]] << " -> ";
            }
            cout <<  "ARBMULT: " << logstr.arb <<" LATENCY: " << logstr.duration << " TRANSACTION NO:" << logread <<endl;

        }
    };

    vector<ix::WebSocket> sockets(socketthreads);
    for(int i=0; i < socketthreads;i++){
        sockets[i].setUrl(socketstrs[i]);
        sockets[i].setOnMessageCallback(onmessage);
    }


    //the thread production codes create thread affinity, and sets thread priority
    //so there's minimal distraction to code

    HANDLE hProcess = GetCurrentProcess();

    if (!SetPriorityClass(hProcess, REALTIME_PRIORITY_CLASS)) {
        DWORD error = GetLastError();
        cerr << "Error setting priority class: " << error << endl;
        return 1;
    }

    std::thread thread([&](){
        DWORD_PTR affinityMask = 1;

        HANDLE threadHandle = GetCurrentThread();
        SetThreadAffinityMask(threadHandle, affinityMask);
        SetThreadPriority(threadHandle, THREAD_PRIORITY_TIME_CRITICAL);
        sockets[0].run();});


    std::thread findthr0([&](){
        DWORD_PTR affinityMask = 2;

        HANDLE threadHandle = GetCurrentThread();
        SetThreadAffinityMask(threadHandle, affinityMask);
        SetThreadPriority(threadHandle, THREAD_PRIORITY_TIME_CRITICAL);
        findarbs();});

    std::thread logthr([&](){
        DWORD_PTR affinityMask = 4;

        HANDLE threadHandle = GetCurrentThread();
        SetThreadAffinityMask(threadHandle, affinityMask);
        SetThreadPriority(threadHandle, THREAD_PRIORITY_TIME_CRITICAL);
        logger();});

    while(true)continue;


    return 0;
}
