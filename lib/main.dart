import 'package:calc/provider/cal_provider.dart';
import 'package:calc/screens/homepage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const Calc());
}

class Calc extends StatelessWidget {
  const Calc({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CalculatorProvider(),
      child: MaterialApp(
        theme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        home: const HomePage(),
      ),
    );
  }
}
