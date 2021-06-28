import 'dart:math';

import 'package:flutter/material.dart';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final double height;
  final double weight;

  String _resultText;
  Color _color;
  String _interpolation;
  double _bmi;

  String getBMI() {
    return _bmi.toStringAsFixed(1);
  }

  String getInterpretation() {
    return _interpolation;
  }

  String getResultText() {
    return _resultText;
  }

  Color getColor() {
    return _color;
  }

  void setResult() {
    _bmi = weight / pow(height / 100, 2);

    if (_bmi >= 40.0) {
      _resultText = 'Obese Class III';
      _color = Colors.red;
      _interpolation =
          'High risk of developing heart disease, high blood pressure, stroke, diabetes';
    } else if (_bmi >= 35) {
      _resultText = 'Obese Class II';
      _color = Colors.redAccent;
      _interpolation =
          'Moderate risk of developing heart disease, high blood pressure, stroke, diabetes';
    } else if (_bmi >= 30) {
      _resultText = 'Obese Class I';
      _color = Colors.orange;
      _interpolation =
          'At a certain age, boost the risk of multiple diseases, including hypertension, coronary artery disease, congestive heart failure, stroke, asthma, pulmonary embolism, gallbladder disease';
    } else if (_bmi >= 25) {
      _resultText = 'Overweight';
      _color = Colors.yellow;
      _interpolation =
          'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi >= 18.5) {
      _resultText = 'Normal ';
      _color = Colors.green;
      _interpolation = 'You have a normal body weight. Good job. ';
    } else if (_bmi >= 16.0) {
      _resultText = 'Underweight ';
      _color = Colors.lightBlueAccent;
      _interpolation =
          'Your body may not be getting the nutrients it needs to build healthy bones, skin, and hair.';
    } else if (_bmi >= 15.0) {
      _resultText = 'Severely underweight ';
      _color = Colors.lightBlue;
      _interpolation =
          'Weighing too little can contribute to a weakened immune system, fragile bones and feeling tired.';
    } else {
      _resultText = 'Very severely underweight';
      _color = Colors.blue;
      _interpolation =
          'High risk of weakened immune system, fragile bones and feeling tired.';
    }
  }
}
