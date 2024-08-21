
class Subject {
  List<Observer> _observers = [];

  void addObserver(Observer observer) {
    _observers.add(observer);
  }

  void notifyObservers(String event) {
    for (var observer in _observers) {
      observer.update(event);
    }
  }
}

abstract class Observer {
  void update(String event);
}

class ConcreteObserver implements Observer {
  @override
  void update(String event) {
    print("Observer received event: $event");
  }
}
