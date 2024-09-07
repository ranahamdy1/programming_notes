abstract class Bmi {
  void bmiCalc();
  factory Bmi(result) {
    if (result <= 18.49) {
      return UnderWeight();
    } else if (18.49 <= result || result <= 24.99) {
      return HealthyBmi();
    } else if (25 <= result || result <= 29.99) {
      return OverWeightBmi();
    } else if (result >= 30) {
      return Obese();
    } else {
      return UnderWeight(); //change it
    }
  }
}

class UnderWeight implements Bmi {
  @override
  void bmiCalc() {
    print("UnderWeight");
  }
}

class HealthyBmi implements Bmi {
  @override
  void bmiCalc() {
    print("HealthyBmi");
  }
}

class OverWeightBmi implements Bmi {
  @override
  void bmiCalc() {
    print("OverWeightBmi");
  }
}

class Obese implements Bmi {
  @override
  void bmiCalc() {
    print("Obese");
  }
}

void main() {
  Bmi bmi1 = Bmi(22.0);
  bmi1.bmiCalc();
}
