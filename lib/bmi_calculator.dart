import 'dart:math';

class BMICalculator {
  BMICalculator({this.height, this.weight});

  int height;
  int weight;
  double _bmi;

  String calcBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25)
      return 'Overweight';
    else if (_bmi <= 18.5)
      return 'Normal';
    else
      return 'Underweight';
  }
}