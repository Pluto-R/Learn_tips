#include <config.h>

using namespace std;

//1.创建线程
/*
std::thread t(threadFunction)：创建一个线程，并执行 threadFunction。
t.join()：主线程等待子线程执行完毕。
如果不调用 join()，主线程可能会在子线程完成之前退出，导致程序异常。
*/

//2.线程函数可以接受参数，参数通过线程构造函数传递。
/*
std::thread t(printMessage, "Hello from thread with arguments!")：将字符串作为参数传递给线程函数。
默认情况下，线程的执行顺序是不确定的。
如果需要控制线程的执行顺序，可以使用同步机制（如 std::mutex 和 std::condition_variable）。
*/

//3.多个线程同时访问共享资源时，可能会导致数据竞争（Race Condition）。为了解决这个问题，需要使用同步机制。
/*
emplace_back 是 C++11 引入的新方法，用于直接在容器中构造元素，避免了不必要的拷贝或移动操作。
显式构造函数：如果构造函数是 explicit 的，emplace_back 不能隐式转换参数。

std::mutex mtx;
mtx.lock();
mtx.unlock();

std::lock_guard 是一个 RAII 风格的锁管理器，在作用域结束时自动释放锁。
std::mutex mtx;
std::lock_guard<std::mutex> lock(mtx);
*/

//4.线程间通信
/*
线程间通信可以通过共享变量、条件变量（std::condition_variable）等方式实现。

std::condition_variable：用于线程间通信，等待某个条件满足。
std::condition_variable cv;
cv.wait(lock, [] { return ready; })：等待 ready 变为 true。
cv.notify_one()：通知一个等待的线程。

!
std::unique_lock
(1)自动加锁和解锁：
当 std::unique_lock 对象创建时，会自动加锁。
当对象销毁时（例如离开作用域），会自动解锁。
(2)手动控制锁：
可以手动调用 lock() 和 unlock()。
std::unique_lock<std::mutex> lock(mtx, std::defer_lock);  // 延迟加锁
lock.lock();  // 手动加锁
lock.unlock();  // 手动解锁
(3)支持条件变量：
std::unique_lock 是 std::condition_variable 的必需参数。
std::condition_variable cv;
std::unique_lock<std::mutex> lock(mtx);
cv.wait(lock);  // 等待条件变量

!
std::this_thread::sleep_for 是一个线程休眠函数，用于让当前线程暂停执行一段时间。
让当前线程休眠指定的时间。
常用于模拟延迟、定时任务或减少 CPU 占用。

std::this_thread::sleep_for(std::chrono::seconds(5));
std::this_thread::sleep_for(std::chrono::milliseconds(500));  // 休眠 500 毫秒
std::this_thread::sleep_for(std::chrono::minutes(1));  // 休眠 1 分钟


*/

void threadFunction(){
    cout << "Hello from thread\n";
}

void printMessage(const string& message){
    cout << message << endl;
}

std::mutex mtx;
int shareData = 0;

void increasement(){
    mtx.lock();
    for(int i = 0;i < 10;i++){
        shareData++;
    }
    mtx.unlock();
}

void increasement2(){
    std::lock_guard<std::mutex> lock(mtx);
    for(int i = 0;i < 2;i++){
        shareData++;
    }
}

std::mutex mtx2;
std::condition_variable cv;
bool ready = false;

void logMessage(){
    std::unique_lock<std::mutex> lock(mtx2);
    cv.wait(lock,[]{return ready == true;});
    std::cout << "NiHao!\n";
}

int main(){
    std::thread t(threadFunction);
    std::thread t1(printMessage,"This is from thread message");
    
    vector<thread> threads;
    for(int i = 0;i < 10;i++){
        threads.emplace_back(increasement);
    }
    
    for(auto& it : threads){
        it.join();
    }

    vector<thread> threads2;
    for(int i = 0;i < 10;i++){
        threads2.emplace_back(increasement2);
    }

    for(auto& it : threads2){
        it.join();
    }

    cout << shareData << endl;
    
    cout << "Hello from main\n";
    
    std::thread t3(logMessage);
    std::this_thread::sleep_for(std::chrono::seconds(5));
    {
        std::lock_guard<std::mutex> lock(mtx2);
        ready = true;
    }
    cv.notify_one();

    t.join();
    t1.join();
    t3.join();
    return 0;
}