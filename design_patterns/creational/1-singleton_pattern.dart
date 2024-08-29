class Dependency {
  void dependency() {
    print("dependency");
  }
}

class Service {
  final Dependency dependency; //dependency injection

  // Private constructor
  Service._internal(this.dependency);

  // Static field to hold the single instance
  static final Service _instance = Service._internal(Dependency());

  // Factory constructor to return the single instance
  factory Service() {
    return _instance;
  }
}

void main() {
  Service singleTone1 = Service();
  Service singleTone2 = Service();
  print(singleTone1 == singleTone2); //true
}
