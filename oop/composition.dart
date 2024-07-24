void main() {
  Car car = Car();
  car.model = "Model";
  car._doors = 4;
  car._color = "red";
  car._engine = Engine();
  car._engine!._type = "Diesel";
  car._engine!._power = "100";
  print(car.model);
}

class Car {
  String? _model;
  String? _color;
  int? _doors;
  //car has a engine
  Engine? _engine;

  //Car(this._model, this._color, this._doors, this._engine);

  set model(String model) => _model = model;
  String get model => _model!;

  set color(String model) => _color = color;
  String get color => _color!;

  set doors(int doors) => _doors = doors;
  int get doors => _doors!;

  set engine(Engine engine) => _engine = engine;
  Engine get engine => _engine!;
}

class Engine {
  String? _type;
  String? _power;

  set model(String model) => _type = type;
  String get type => _type!;

  set power(String model) => _power = power;
  String get power => _power!;
}
