#include <iostream>
using namespace std;

struct Maker
{
    Maker()
    {
        cout << "Maker() 构造函数" << endl;
    }
    Maker(const Maker& other)
    {
        cout << "Maker(Maker&) 拷贝构造函数" << endl;
    }
    ~Maker()
    {
        cout << "~Maker() 析构函数" << endl;
    }
};
void fun()
{
    Maker m;
    cout << "--------" << endl;
    throw m;
    cout << "fun__end" << endl;
}
int main()
{
    try
    {
        fun();
    }
    // catch (Maker & m)
    catch(...)
    {
        cout << "收到Maker异常" << endl;
    }
}