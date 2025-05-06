# Variables
name = "Ali"
age = 25

# Print
print("مرحبًا بك في بايثون")
print(name)

# (if - else) statement
age = 20
if age >= 18:
    print("مسموح لك بالدخول")
else:
    print("ممنوع الدخول")

# For loop
for i in range(5):
    print(i)

# While loop
count = 0
while count < 3:
    print("HELLO")
    count += 1

# Function
def say_hello(name):
    print("Hello " + name)

say_hello("Ahmed")

# List
fruits = ["تفاح", "موز", "برتقال"]
print(fruits[0])  # تطبع: تفاح
print(fruits[1])  # تطبع: موز
print(fruits[2])  # تطبع: برتقال

fruits[1] = "عنب"  # تغيير العنصر الثاني في القائمة
print(fruits)  # تطبع: ['تفاح', 'عنب', 'برتقال']

fruits.append("كيوي") # إضافة عنصر جديد إلى القائمة
print(fruits)  # ['تفاح', 'عنب', 'برتقال', 'كيوي']

fruits.remove("عنب") # إزالة العنصر "عنب" من القائمة
print(fruits)  # ['تفاح', 'برتقال', 'كيوي']

for fruit in fruits: # حلقة تكرارية لطباعة كل عنصر في القائمة
    print(fruit) # تطبع: تفاح، برتقال، كيوي

# Dictionary
person = {
    "name": "rana",
    "age": 25,
    "city": "Cairo"
}
print(person["name"])  # تطبع: rana
print(person["city"])  # تطبع: Cairo

person["age"] = 26 # تغيير قيمة المفتاح "age"
print(person)  # تطبع: {'name': 'Sara', 'age': 26, 'city': 'Cairo'}

person["job"] = "Engineer" # إضافة مفتاح جديد
print(person)  # تطبع: {'name': 'Sara', 'age': 26, 'city': 'Cairo', 'job': 'Engineer'}

del person["city"] # حذف المفتاح "city"
print(person)  # تطبع: {'name': 'Sara', 'age': 26, 'job': 'Engineer'}

for key, value in person.items(): #  التكرار على القاموس
    print(key + " => " + str(value))


# File Handling
# لازم يكون في ملف اسمه data.txt في نفس المجلد
file = open("data.txt", "r")
content = file.read()
print(content)
file.close()

# كتابة نص في ملف
file = open("data.txt", "w")
file.write("أهلاً بك في بايثون!")
file.close()

# إضافة نص إلى ملف موجود
file = open("data.txt", "a")
file.write("\nسطر جديد تمت إضافته.")
file.close()

# with statement (تلقائيًا يغلق الملف بعد الانتهاء)
# with تغنيك عن close() لأن الملف بيتقفل تلقائيًا
with open("data.txt", "r") as file:
    print(file.read())

# Exception Handling (try - except)
try:
    # الكود اللي ممكن يسبب مشكلة
    result = 10 / 0
except ZeroDivisionError: #(ZeroDivisionError - IndexError - FileNotFoundError)
    # الكود اللي هيتنفذ لو حصل الخطأ
    print("لا يمكن القسمة على صفر!")

# التعامل مع أنواع مختلفة من الأخطاء
try:
    number = int(input("أدخل رقم: "))
    result = 10 / number
except ZeroDivisionError:
    print("لا يمكن القسمة على صفر!")
except ValueError:
    print("يجب إدخال رقم صحيح!")

# Finaly
# (finally) الكود اللي هيشتغل في كل الأحوال سواء حصل خطأ أو لأ
try:
    file = open("data.txt", "r")
    content = file.read()
except FileNotFoundError:
    print("الملف غير موجود!")
finally:
    print("أتممت العملية.")


# Classes and Objects
# class
class Person:
    def __init__(self, name, age):  # Constructor
        self.name = name
        self.age = age

    def greet(self):  # function
        print(f"my name is {self.name} and my age is {self.age}.")

# Object
person1 = Person("أحمد", 30)
print(person1.name)
print(person1.age)

person1.greet()

# class Student inherits from class Person
# class Student (inheritance)
class Student(Person):
    def __init__(self, name, age, grade):
        super().__init__(name, age)  # استدعاء دالة __init__ في فئة Person
        self.grade = grade  # إضافة خاصية جديدة
    def greet(self):
        print(f"my name is {self.name}, my age is {self.age} and my grade is {self.grade}.")

# إنشاء كائن من فئة Student
student1 = Student("رنا", 22, "الثالثة")
student1.greet()  # تطبع: مرحبًا، اسمي رنا وعمري 22، وأنا في الصف الثالثة.
