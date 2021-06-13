import 'dart:math';

enum EnumGender { male, female }

class BMICalcalculator {
  BMICalcalculator(this.heigth, this.weigth, this.age);
  int heigth;
  int weigth;
  int age;
  EnumGender gender;

  double _bmi;

  String calculateBMI() {
    _bmi = weigth / pow(heigth / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResults() {
    if (_bmi >= 25) {
      return 'Overweigth';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweigth';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi >= 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}
