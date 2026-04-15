import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String title = "";
  int counter = 0;
  TextEditingController number1 = TextEditingController();
  TextEditingController number2 = TextEditingController();
  double total = 0;

  @override
  void initState() {
    //variable declaration
    title = "Welcome to My Home Page";
    number1.text = "0";
    number2.text = "0";
    super.initState();
  }

  void handleAddtion() {
    setState(() {
      total = double.parse(number1.text) + double.parse(number2.text);
    });
  }

  void handleSubtraction() {
    setState(() {
      total = double.parse(number1.text) - double.parse(number2.text);
    });
  }

  void handleMultiplication() {
    setState(() {
      total = double.parse(number1.text) * double.parse(number2.text);
    });
  }

  //handle for variable
  void handleButtonClick() {
    setState(() {
      counter += 1;
    });
  }

  //is for boolean

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: Text(title)),
          Center(child: Text("$counter")),
          ElevatedButton(
            onPressed: () {
              handleButtonClick();
            },
            child: Text("increment counter"),
          ),

          SizedBox(height: 20),
          TextField(controller: number1),
          SizedBox(height: 20),
          TextField(controller: number2),
          ElevatedButton(
            onPressed: () {
              handleAddtion();
            },
            child: Text("Addition"),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              handleSubtraction();
            },
            child: Text("Subtraction"),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              handleMultiplication();
            },
            child: Text("Multiplication"),
          ),
          SizedBox(height: 20),
          Text("Total is $total"),
        ],
      ),
    );
  }
}
