⚡ Dependency injection

دا نفس فكره ان اعمل object بس بطريقه تانيه مثلا لو عندى كلاس اسمه Dependency 
وعندى كلاس تانى اسمه Service 
كده لو عاوز اطبق ال Dependency injection 
هروح اعمل فى كلاس ال Service 

final Dependency  dependency ;

وبكده حقنت كل حاجات الكلاس Dependency جوه كلاس ال servise

-وفى مثال عليه فى Dependency inversion code

EX:

class Dependency {

  void dependency(){
  
    print("dependency");
  }
}

class Service {

  final Dependency dependency;   //dependency injection

  Service(this.dependency);
}
