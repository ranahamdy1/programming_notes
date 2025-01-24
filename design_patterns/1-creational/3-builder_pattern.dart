//  المنتج : الكائن النهائي
class Car {
  String? engine;
  String? body;
  int? wheels;

  @override
  String toString() {
    return 'Car: Engine=$engine, Body=$body, Wheels=$wheels';
  }
}

// واجهة الباني
abstract class CarBuilder {
  void setEngine(String engine);
  void setBody(String body);
  void setWheels(int wheels);
  Car build();
}

// الباني المحدد
class SportsCarBuilder implements CarBuilder {
  final Car _car = Car();

  @override
  void setEngine(String engine) {
    _car.engine = engine;
  }

  @override
  void setBody(String body) {
    _car.body = body;
  }

  @override
  void setWheels(int wheels) {
    _car.wheels = wheels;
  }

  @override
  Car build() {
    return _car;
  }
}

// المُخرج
class CarDirector {
  final CarBuilder builder;

  CarDirector(this.builder);

  Car buildSportsCar() {
    builder.setEngine("V8 Engine");
    builder.setBody("Sporty");
    builder.setWheels(4);
    return builder.build();
  }
}

void main() {
  final sportsCarBuilder = SportsCarBuilder();
  final director = CarDirector(sportsCarBuilder);

  final sportsCar = director.buildSportsCar();
  print(sportsCar);
}
