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
String oddEvenNumber(int number){
  String result;
  if((number % 2) == 0){
    result = "This is Even number : ${number}";
  }else{
    result = "This is Odd number : ${number}";
  }
  return result;
}
String greaterNumber(int numOne, int numTwo, int numThree){
  String result;
  if((numOne != null) && (numThree != null) && (numTwo != null)) {
    if ((numOne > numTwo) && (numOne > numThree)) {
      result = "This is GreaterThen number of : ${numOne}";
    } else if ((numTwo > numOne) && (numTwo > numThree)) {
      result = "This is GreaterThen number of : ${numTwo}";
    } else if ((numThree > numOne) && (numThree > numTwo)) {
      result = "This is GreaterThen number of : ${numThree}";
    } else {
      result = "This is not any number of greater";
    }
  }else{
    result = "file the All Number Complete";
  }
  return result;
}