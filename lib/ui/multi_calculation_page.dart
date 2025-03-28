import 'package:calculet_task/data/remote/ui_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MultiCalculationPage extends StatefulWidget {
  const MultiCalculationPage({super.key});

  @override
  State<StatefulWidget> createState() => _MultiCalculatioinPageState();
}

class _MultiCalculatioinPageState extends State<MultiCalculationPage> {
  TextEditingController numberOneController = TextEditingController();
  TextEditingController numberTwoController = TextEditingController();
  var resultSum;
  var resultSub;
  var resultMul;
  var resultDiv;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Multi Calculet",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width*0.80,
        child: Column(
          children: [
            TextField(
              inputFormatters: [LengthLimitingTextInputFormatter(10)],
              controller: numberOneController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  hintText: "No1",
                  label: const Text("123"),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11.0))),
            ),
            mSpacer(mHeight: 11),
            TextField(
              inputFormatters: [LengthLimitingTextInputFormatter(10)],
              controller: numberTwoController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "No2",
                  label: const Text("123"),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11.0))),
            ),
            mSpacer(mHeight: 15),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        if (numberOneController != null &&
                            numberTwoController != null) {
                          resultSum = sumOperation(int.parse(numberOneController.text),
                              int.parse(numberTwoController.text));
                          setState(() {});
                        }
                      },
                      child: const Center(
                        child: Text(
                          "+",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      )),
                  ElevatedButton(
                      onPressed: () {
                        if (numberOneController != null &&
                            numberTwoController != null) {
                          resultSub = subOperation(int.parse(numberOneController.text), int.parse(numberTwoController.text));
                          setState(() {});
                        }
                      },
                      child: const Center(
                        child: Text(
                          "-",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                      )),
                  ElevatedButton(
                      onPressed: () {
                        if (numberOneController != null &&
                            numberTwoController != null) {
                          resultMul = mulOperation(int.parse(numberOneController.text),
                              int.parse(numberTwoController.text));
                          setState(() {});
                        }
                      },
                      child: const Center(
                        child: Text(
                          "*",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      )),
                  ElevatedButton(
                      onPressed: () {
                        if (numberOneController != null &&
                            numberTwoController != null) {
                          resultDiv = divOperation(num.parse(numberOneController.text),
                              num.parse(numberTwoController.text));
                          setState(() {});
                        }
                      },
                      child: const Center(
                          child: Text(
                        "/",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ))),
                ],
              ),
            ),
            mSpacer(mHeight: 11.0),
            SizedBox(child: Column(
              children: [
                Text("Sum Result is : ${resultSum ?? ' '}"),
                Text("Subtraction Result is : ${resultSub ?? ' '}"),
                Text("Multiplication Result is : ${resultMul ?? ' '}"),
                Text("Division Result is : ${resultDiv ?? ' '}"),
              ],
            ))
          ],
        ),
      )),
    );
  }
}
