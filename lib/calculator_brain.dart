import 'dart:math';

class CalculatorBrain {
  CalculatorBrain(this.height, this.weight);

  final int height;
  final int weight;
  double? _bmi;

  String calculateBMI() {
    double _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi! >= 25) {
      return "OverWeight";
    } else if(_bmi! > 18.5) {
      return "Normal";
    } else {
      return "UnderWeight";
    }
  }

  String getInterPretation() {
    if (_bmi! >= 25) {
      return "通常より重いからもう少し減らそう";
    } else if(_bmi! > 18.5) {
      return "ふっつー";
    } else {
      return "クソガリなのでバルクアップしてください";
    }
  }
}