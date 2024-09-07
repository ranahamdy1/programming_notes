class NewsPublisher {
  List<Observer> _observers = [];

  // تسجيل مراقب جديد
  void addObserver(Observer observer) {
    _observers.add(observer);
  }

  // إزالة مراقب
  void removeObserver(Observer observer) {
    _observers.remove(observer);
  }

  // إشعار المراقبين بالتحديث
  void notifyObservers(String news) {
    for (var observer in _observers) {
      observer.update(news);
    }
  }
}

// الواجهة للمراقبين
abstract class Observer {
  void update(String news);
}

// مراقب محدد
class NewsSubscriber implements Observer {
  final String name;
  NewsSubscriber(this.name);

  @override
  void update(String news) {
    print('$name received news: $news');
  }
}

void main() {
  var newsPublisher = NewsPublisher();
  
  var subscriber1 = NewsSubscriber('User1');
  var subscriber2 = NewsSubscriber('User2');
  
  // إضافة المراقبين
  newsPublisher.addObserver(subscriber1);
  newsPublisher.addObserver(subscriber2);

  // نشر خبر جديد
  newsPublisher.notifyObservers('Breaking News!');
}
