import 'package:flutter/material.dart';

Widget mSpacer({double mWidth = 0.0, double mHeight = 0.0}){
  return SizedBox(
    width: mWidth,
    height: mHeight,
  );
}
dynamic sumOperation(int numberOne, int numberTwo){
  int sum = numberOne + numberTwo;
  return sum;
}
num subOperation(num numberOne, num numberTwo){
  num sub = numberOne - numberTwo;
  return sub;
}
dynamic mulOperation(int numberOne, int numberTwo){
  num mul = numberOne * numberTwo;
  return mul;
}
dynamic divOperation(num numberOne, num numberTwo){
  num div = numberOne / numberTwo;
  return div;
}