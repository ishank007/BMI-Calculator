import 'package:flutter/cupertino.dart';

class CalculatorBrain {
  int weight;
  int height;
  double _bmi;
  CalculatorBrain({@required this.weight, @required this.height});
  String calculateBmi() {
    _bmi = (weight * 10000) / (height * height);
    return _bmi.toStringAsFixed(1);
  }

  String result() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi >= 18.5) {
      return 'Normal';
    } else {
      return 'UnderWeight';
    }
  }

  String Interpret() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi >= 18.5) {
      return 'You have a normal body weight good job!';
    } else {
      return 'You have a lower than normal body weight. Try to eat a bit more. ';
    }
  }
}
