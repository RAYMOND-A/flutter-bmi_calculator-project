import 'dart:math';

class CalculateResult {
  CalculateResult({this.weight, this.height});
  final int height;
  final int weight;
  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2); // height/100 to give height in meters
    return _bmi.toStringAsFixed(
        1); // this return a converted 1 dp double value to it corresponding string
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi >= 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You\'re a little bit fat. Please do exercise more.';
    } else if (_bmi >= 18.5) {
      return 'Your weight is normal. Impressive!';
    } else {
      return 'You are lower than normal body weight. Please do rest and eat more.';
    }
  }
}
