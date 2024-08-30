abstract class TaxStrategy {
  double calculateTax(double amount);
}

// استراتيجية الضرائب للزبائن العاديين
class RegularTaxStrategy implements TaxStrategy {
  @override
  double calculateTax(double amount) {
    return amount * 0.10; // 10% ضريبة
  }
}

// استراتيجية الضرائب للزبائن المميزين
class PremiumTaxStrategy implements TaxStrategy {
  @override
  double calculateTax(double amount) {
    return amount * 0.05; // 5% ضريبة
  }
}

class TaxContext {
  TaxStrategy _strategy;

  TaxContext(this._strategy);

  void setStrategy(TaxStrategy strategy) {
    _strategy = strategy;
  }

  double calculate(double amount) {
    return _strategy.calculateTax(amount);
  }
}

void main() {
  double amount = 1000.0;

  // حساب الضرائب باستخدام الاستراتيجية العادية
  var context = TaxContext(RegularTaxStrategy());
  double regularTax = context.calculate(amount);
  print('Regular Tax: \$${regularTax}');

  // تغيير الاستراتيجية لحساب الضرائب للزبائن المميزين
  context.setStrategy(PremiumTaxStrategy());
  double premiumTax = context.calculate(amount);
  print('Premium Tax: \$${premiumTax}');
}
