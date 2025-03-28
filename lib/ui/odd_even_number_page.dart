import 'package:calculet_task/data/remote/ui_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OddEvenNumberPage extends StatefulWidget{
  const OddEvenNumberPage({super.key});
  @override
  State<StatefulWidget> createState() => _OddEvenNumberPageState();
}

class _OddEvenNumberPageState extends State<OddEvenNumberPage>{
  TextEditingController numberOneController = TextEditingController();
  String? result;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Odd / Even number", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.deepPurple),),),
      body: Center(child: SizedBox(
        width: MediaQuery.of(context).size.width*0.80,
        height: MediaQuery.of(context).size.height*0.90,
        child: Column(
          children: [
          mSpacer(mHeight: 20.0),
          TextField(
            inputFormatters: [LengthLimitingTextInputFormatter(10)],
            controller: numberOneController,
            keyboardType: TextInputType.number,

            decoration: InputDecoration(
              label: const Text("NumOne"),
              hintText: "123",
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(11.0)
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(11.0)
              ),
            ),
          ),
          mSpacer(mHeight: 10.0),
          ElevatedButton(onPressed: (){
            if(numberOneController != null){
              result = oddEvenNumber(int.parse(numberOneController.text));
            }else{
              result = "Enter your number in box";
            }
            setState(() {});
          }, child: const Text("Submit", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),)),
          mSpacer(mHeight: 10.0),
          Text(result ?? '')
        ],),),),
    );
  }
}