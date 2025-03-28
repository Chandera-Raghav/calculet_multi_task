import 'package:calculet_task/data/remote/ui_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SimpleCalculationPage extends StatefulWidget{
  const SimpleCalculationPage({super.key});


  @override
  State<StatefulWidget> createState() => _SimpleCalculationPageState();
}
class _SimpleCalculationPageState extends State<SimpleCalculationPage>{
  TextEditingController numberOneController = TextEditingController();
  TextEditingController numberTwoController = TextEditingController();
  int? sum;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: const Text("Add Calculation"),),
      body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width*0.80,
          height: MediaQuery.of(context).size.height*0.80,
          child: Column(
            children: [
              TextField(
                controller: numberOneController,
                inputFormatters: [LengthLimitingTextInputFormatter(10)],
                keyboardType: TextInputType.number,
                decoration: InputDecoration(prefix: const Icon(Icons.onetwothree_outlined), border: OutlineInputBorder(borderRadius: BorderRadius.circular(11.0))),
              ),
              mSpacer(mHeight: 11.0),
              TextField(
                controller: numberTwoController,
                inputFormatters: [LengthLimitingTextInputFormatter(10)],
                keyboardType: TextInputType.number,
                decoration: InputDecoration(prefix: const Icon(Icons.onetwothree_outlined), border: OutlineInputBorder(borderRadius: BorderRadius.circular(11.0))),
              ),
              mSpacer(mHeight: 11.0),
              ElevatedButton(onPressed: (){
                  sum = int.parse(numberOneController.text) + int.parse(numberTwoController.text);
                  setState(() {
                  });
              }, child: const Text("Add")),
              mSpacer(mHeight: 11.0),
              Text("This is Result of sum : ${sum ?? 0}", style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
            ],
          ),
        ),
      ),
    );
  }
}