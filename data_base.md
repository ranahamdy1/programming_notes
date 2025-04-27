⚡ Data Base 

مجموعه من البيانات يتم ترتيبها بشكل مرتب منظم لكى نصل إليها بسهوله ونقدر نعدلها عليها بسهوله 

DBMS (Database Management Systems) :

1- Relational DB (SQL server) [ *SQL => Structured Query Language* ]
- [READ-SQL](https://www.w3schools.com/sql/)
- [YOUTUBE-SQL](https://www.youtube.com/watch?v=zpnHsWOy0RY&list=PLP9IO4UYNF0UQkBXlTMSw0CYsxv-GDkkI)

2- Non Relational DB ( NoSQL)

SQL:
```
SELECT * FROM Customers;
>>>> return all values
```
```
SELECT column1, column2, ...  
FROM table_name;
```
```
SELECT DISTINCT Country
FROM Customers;
>>>> ⚡return only different values
```
```
SELECT * FROM Customers
WHERE Country='Mexico';
>>>> where =>> (used to extract only those records that fulfill a specified condition)
>>>> WHERE clause is not only used in SELECT statements, it is also used in UPDATE, DELETE, etc.!
```
```
SELECT * FROM Products
ORDER BY Price DESC|ASC;
>>>> ⚡The ORDER BY keyword is used to sort the result-set in ascending or descending order.
```
```
INSERT INTO table_name (column1, column2, column3, ...)
VALUES (value1, value2, value3, ...);
>>>> The INSERT INTO statement is used to insert new records in a table.
```
```
SELECT column_names
FROM table_name
WHERE column_name IS NULL;
>>>> NULL is not 0 or " "
```
```
UPDATE table_name
SET column1 = value1, column2 = value2, ...
WHERE condition;
```
```
DELETE FROM table_name WHERE condition;
```
- ✔JOIN [ دى لو عندى جدولين عايزه ادمجهم علشان اطلع معلومه معينه]

 مثلا عندى جدول فى المثال هنا [JOIN-SQL](https://www.w3schools.com/sql/sql_join.asp)

   عايزه اعرف ال  customerId = 2 
   
   اسمه ايه والاسم ف الجدول التانى فهعمل ايه
```
- SELECT Orders.OrderID, Customers.CustomerName, Orders.OrderDate
FROM Orders
INNER JOIN Customers ON Orders.CustomerID=Customers.CustomerID;
```
- ✔CASE
```
EX:
- SELECT OrderID, Quantity,
CASE
    WHEN Quantity > 30 THEN 'The quantity is greater than 30'
    ELSE 'The quantity is under 30'
END AS QuantityText
FROM OrderDetails;
```

(SQL) EX:
![db1](images/db1.jpeg)
![db2](images/db2.jpeg)
![db3](images/db3.jpeg)
![db4](images/db4.jpeg)

- [YOUTUBE](https://youtu.be/N-WPYk417yE?si=CIo9C-k3mFW-TkwL)
