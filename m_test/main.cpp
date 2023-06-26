#include <stdio.h>
#include <iostream>

using namespace std;

class Person
{
private:
    int age;
public:
    Person() {
        cout << "构造了一个人：Person" << endl;
    }
    Person(int a) : age(a) {
        cout << "Person初始化列表初始age: " << age << endl;
    }
    Person(const Person &b) {
        cout << b.age << endl;
    }
    void getAge() {
        cout << "age = " <<age << endl;
    }
    virtual void fun() {
        cout << "全价age:" <<age << endl;
    }
    virtual ~Person() {
        cout << "全价析构" << endl;
    }
};

class Student : public Person
{
private:
    int cc;
public:
    Student() {
        cout << "构造了一个人：Student" << endl;
    }
    Student(int a, int b): Person(a), cc(b) {
        cout << "初始化了一个人：Student" << endl;
        cout << cc << endl;
    }
    virtual void fun()
    {
        cout << "半价票" << endl;//学生票半价
    }
    virtual ~Student() {
        cout << "半价票析构" << endl;
    }
};

void BuyTicket(Person *p) {
    p->fun();
}
int main() {
    Person p = Person();
    Person q = Person(1);
    Student s = Student(10,20);
    s.fun();
    s.getAge();
    return 0;
}