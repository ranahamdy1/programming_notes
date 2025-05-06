#include <iostream>
using namespace std;

//  تعريف  add function خارج main
int add(int a, int b) {
    return a + b;
}

int main() {
    cout << "Hello, World!" << endl;

    // variables
    int age = 20;
    float height = 1.75;
    char grade = 'A';
    string name = "Ahmed";
    bool isStudent = true;

    // input and output
    cout << "ادخل عمرك: ";
    cin >> age;
    cout << "عمرك هو: " << age << endl;

    // if-else statement
    if (age >= 18) {
        cout << "أنت بالغ" << endl;
    } else {
        cout << "أنت قاصر" << endl;
    }

    // while loop
    int i = 0;
    while (i < 5) {
        cout << i << endl;
        i++;
    }

    // for loop
    for (int j = 0; j < 5; j++) {
        cout << j << endl;
    }

    // switch statement
    int day = 3;
    switch (day) {
        case 1:
            cout << "الاثنين" << endl;
            break;
        case 2:
            cout << "الثلاثاء" << endl;
            break;
        case 3:
            cout << "الأربعاء" << endl;
            break;
        default:
            cout << "يوم غير معروف" << endl;
    }

    int result = add(3, 4);
    cout << "result: " << result << endl;

    return 0;
}

//---------------------------------

// Class
class Human{
public:
    string name;
    int age;

    void greet() {
            cout << " i am " << name << " and my age is " << age << "." << endl;
    }
};

int main() {
    Human p1;
    p1.name = "Ahmed";
    p1.age = 25;
    p1.greet();
    return 0;
}

//---------------------------------

class Person {
    public:
        string name;
        int age;

        // Constructor
        Person(string n, int a) {
            name = n;
            age = a;
        }

        void greet() {
            cout << " i am " << name << " and my age is " << age << "." << endl;
        }
    };

    int main() {
        Person p("rana", 22);
        p.greet();
        return 0;
    }

//---------------------------------

    // Inheritance
    class Animal {
        public:
            void sound() {
                cout << "Animal" << endl;
            }
        };

        class Dog : public Animal {
        public:
            void bark() {
                cout << "Dog" << endl;
            }
        };

        int main() {
            Dog d;
            d.sound();
            d.bark();
            return 0;
        }

//---------------------------------

// Polymorphism
class Animal {
    public:
        virtual void sound() {
            cout << "Animal" << endl;
        }
    };

    class Cat : public Animal {
    public:
        void sound() override {
            cout << "Cat" << endl;
        }
    };

    int main() {
        Animal* a;
        Cat c;
        a = &c;
        a->sound();
        return 0;
    }


//---------------------------------
    // Encapsulation
    class BankAccount {
        private:
            int balance;

        public:
            void setBalance(int b) {
                if (b >= 0) balance = b;
            }

            int getBalance() {
                return balance;
            }
        };

        int main() {
            BankAccount account;
            account.setBalance(1000);
            cout << "الرصيد: " << account.getBalance() << endl;
            return 0;
        }
