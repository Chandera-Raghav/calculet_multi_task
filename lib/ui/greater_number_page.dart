import 'package:calculet_task/data/remote/ui_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class GreaterNumberPage extends StatefulWidget{
  const GreaterNumberPage({super.key});

  @override
  State<StatefulWidget> createState() => _GreaterNumberPageState();
}

class _GreaterNumberPageState extends State<GreaterNumberPage>{
  TextEditingController numberOneController = TextEditingController();
  TextEditingController numberTwoController = TextEditingController();
  TextEditingController numberThreeController = TextEditingController();
  String? result;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Greater number", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),),
      body: Center(child: SizedBox(
        width: MediaQuery.of(context).size.width*0.80,
        height: MediaQuery.of(context).size.height*0.90,
        child: Column(children: [
          mSpacer(mHeight: 20),
          TextField(
            inputFormatters: [LengthLimitingTextInputFormatter(10)],
            controller: numberOneController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              label: const Text("num1"),
              hintText: "123",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11.0)
              ),
            )
          ),
          mSpacer(mHeight: 11.0),
          TextField(
              inputFormatters: [LengthLimitingTextInputFormatter(10)],
              controller: numberTwoController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                label: const Text("num2"),
                hintText: "123",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11.0)
                ),
              )
          ),
          mSpacer(mHeight: 11.0),
          TextField(
              inputFormatters: [LengthLimitingTextInputFormatter(10)],
              controller: numberThreeController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                label: const Text("num3"),
                hintText: "123",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11.0)
                ),
              )
          ),
          mSpacer(mHeight: 11.0),
          ElevatedButton(onPressed: (){
            result = greaterNumber(int.parse(numberOneController.text), int.parse(numberTwoController.text), int.parse(numberThreeController.text));
            setState(() {});
          }, child: const Text("Submit", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)),
          mSpacer(mHeight: 11.0),
          Text("${result ?? ''}")
        ],),),),
    );
  }
}