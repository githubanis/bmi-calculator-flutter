import 'package:flutter/material.dart';

const kBottomContainerHeight = 80.0;
const kActiveCardColor = Color(0xFF333333);
const kInActiveCardColor = Color(0xFF212121);
const kBottomContainerColor = Color(0xFFEB1555);
const kLabelTextStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xFFEB1555),
);
const kNumberTextStyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.w900,
);

const kLargeButtonTextStyle = TextStyle(
  fontSize: 30.0,
  fontWeight: FontWeight.w900,
);
const kTitleTextStyle = TextStyle(
  fontSize: 40.0,
  fontWeight: FontWeight.w900,
);
const kResultTextStyle = TextStyle(
  color: Color(0xFF24D876),
  fontSize: 50.0,
  fontWeight: FontWeight.w900,
);
const kBMITextStyle = TextStyle(
  fontSize: 100.0,
  fontWeight: FontWeight.w900,
);
const kBodyTextStyle = TextStyle(
  fontSize: 22.0,
);

TextStyle fBMITextStyle(Color txtClr) {
  return TextStyle(
    fontSize: 45.0,
    color: txtClr,
    fontWeight: FontWeight.w900,
  );
}

TextStyle fBodyTextStyle(Color txtClr) {
  return TextStyle(
    fontSize: 22.0,
    color: txtClr,
  );
}
