import 'package:calculet_task/local/page_model.dart';
import 'package:calculet_task/ui/greater_number_page.dart';
import 'package:calculet_task/ui/multi_calculation_page.dart';
import 'package:calculet_task/ui/odd_even_number_page.dart';
import 'package:calculet_task/ui/simple_calculation_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<StatefulWidget> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    List<PageModel> data = [
      PageModel(
          pageName: "Simple Calculation",
          superKey: const SimpleCalculationPage()),
      PageModel(
          pageName: "Multi calculation", superKey: const MultiCalculationPage()),
      PageModel(pageName: "OddEven Number", superKey: const OddEvenNumberPage()),
      PageModel(pageName: "Check the Greater", superKey: const GreaterNumberPage())
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Home",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(28.0),
        child: GridView.builder(
            itemCount: data.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: (MediaQuery.of(context).orientation ==
                        Orientation.landscape)
                    ? 3
                    : 2),
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => data[index].superKey));
                },
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: GridTile(
                        child: Text(data[index].pageName,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Color(0xff0d005b)))),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
