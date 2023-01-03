import 'package:flutter/material.dart';
import 'package:flutter_simple_calculator/flutter_simple_calculator.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  double? _currentValue = 0; // Variable that holds the any changes in the calc
  @override
  Widget build(BuildContext context) {
    var cal = SimpleCalculator(
      value: _currentValue!,
      hideExpression: false,
      hideSurroundingBorder: true,
      autofocus: true,
      onChanged: (key, value, expression) {
        setState(() {
          _currentValue = value ?? 0;
        });
      },
      theme: const CalculatorThemeData(
        borderColor: Colors.black,
        borderWidth: 2,
        displayColor: Colors.black54,
        displayStyle:
            TextStyle(fontSize: 80, color: Colors.lightBlue),
        expressionColor: Colors.indigoAccent,
        expressionStyle: TextStyle(fontSize: 20, color: Colors.black87),
        operatorColor: Colors.blueAccent,
        operatorStyle: TextStyle(fontSize: 30, color: Colors.blueGrey),
        commandColor: Colors.white10,
        commandStyle: TextStyle(fontSize: 30, color: Colors.blueGrey),
        numColor: Colors.grey,
        numStyle: TextStyle(fontSize: 50, color: Colors.blueGrey),
      ),
    );
    return SafeArea(child: cal);
  }
}
