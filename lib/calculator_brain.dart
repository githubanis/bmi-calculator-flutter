import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 40.0) {
      return 'Obese Class III';
    } else if (_bmi >= 35) {
      return 'Obese Class II';
    } else if (_bmi >= 30) {
      return 'Obese Class I';
    } else if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi >= 18.5) {
      return 'Normal ';
    } else if (_bmi >= 16.0) {
      return 'Underweight ';
    } else if (_bmi >= 15.0) {
      return 'Severely underweight ';
    } else {
      return 'Very severely underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 40.0) {
      return 'High risk of developing heart disease, high blood pressure, stroke, diabetes';
    } else if (_bmi >= 35) {
      return 'Moderate risk of developing heart disease, high blood pressure, stroke, diabetes';
    } else if (_bmi >= 30) {
      return 'At a certain age, boost the risk of multiple diseases, including hypertension, coronary artery disease, congestive heart failure, stroke, asthma, pulmonary embolism, gallbladder disease';
    } else if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi >= 18.5) {
      return 'You have a normal body weight. Good job. ';
    } else if (_bmi >= 16.0) {
      return 'Your body may not be getting the nutrients it needs to build healthy bones, skin, and hair.';
    } else if (_bmi >= 15.0) {
      return 'Weighing too little can contribute to a weakened immune system, fragile bones and feeling tired.';
    } else {
      return 'High risk of weakened immune system, fragile bones and feeling tired.';
    }
  }
}
