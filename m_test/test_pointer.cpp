#include <stdio.h>
#include <iostream>
#include <memory>

using namespace std;

void foo(shared_ptr<int> i) {
    (*i)++;
}

void Observe(std::weak_ptr<int> wptr) {
    
}

int main() {

    auto pointer = make_shared<int>(10);
    auto pointer2 = pointer;    // reference count + 1
    auto pointer3 = pointer;    // reference count + 1

    foo(pointer);
    std::cout << *pointer << std::endl; // 11
    int *p = pointer.get();             // does not increase reference count

    std::cout << "pointer.use_count() = " << pointer.use_count() << std::endl;
    std::cout << "pointer2.use_count() = " << pointer2.use_count() << std::endl;
    std::cout << "pointer3.use_count() = " << pointer3.use_count() << std::endl;
 
    pointer2.reset();
    std::cout << "reset pointer2:" << std::endl;
    std::cout << "pointer.use_count() = " << pointer.use_count() << std::endl;
    std::cout << "pointer2.use_count() = " << pointer2.use_count() << std::endl;
    std::cout << "pointer3.use_count() = " << pointer3.use_count() << std::endl;
    
    pointer3.reset();
    std::cout << "pointer3:" << *pointer3<< std::endl;
    std::cout << "reset pointer3:" << std::endl;
    std::cout << "pointer.use_count() = " << pointer.use_count() << std::endl;
    std::cout << "pointer2.use_count() = " << pointer2.use_count() << std::endl;
    std::cout << "pointer3.use_count() = " << pointer3.use_count() << std::endl;
    // std::cout << *pointer << std::endl; // reference count equals 0, illegal access
 
 
    // Before leaving the scope, the pointer is destructed and
    // the reference count is reduced to 0
    return 0;
}