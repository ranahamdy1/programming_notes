⚡1- Relation between object

1️⃣ Composition

Child class depent on father class

EX: if we have home class and room class

لو هدينا الهوم الرووم هتتهد هى كمان معتمدين ع بعض 

2️⃣ Aggregation

Child class independent on father class


لو عندى person class و player class لو ال person مات ال player مش هيموت مش مرتبطين ببعض

3️⃣ Association 

relationship between two or more objects in which the objects have their own lifetime and there is no owner

- [READ](https://medium.com/@bindubc/association-aggregation-and-composition-in-oops-8d260854a446)

-------------------------------------------------------------------------------------

⚡2- Dependency injection

دا نفس فكره ان اعمل object بس بطريقه تانيه مثلا لو عندى كلاس اسمه Dependency 
وعندى كلاس تانى اسمه Service 
كده لو عاوز اطبق ال Dependency injection 
هروح اعمل فى كلاس ال Service 

final Dependency  dependency ;

وبكده حقنت كل حاجات الكلاس Dependency جوه كلاس ال servise

-وفى مثال عليه فى Dependency inversion code

EX:
```
class Dependency {
  void dependency(){
    print("dependency");
  }
}

class Service {
  final Dependency dependency;   //dependency injection
  Service(this.dependency);
}
```
-------------------------------------------------------------------------------------

⚡3- 
