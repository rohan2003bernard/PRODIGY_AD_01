import 'package:flutter/material.dart';
import 'package:function_tree/function_tree.dart';

class CalculatorProvider extends ChangeNotifier {
  final comController = TextEditingController();

  setValue(String value) {
    String str = comController.text;

    switch (value) {
      case "AC":
        comController.clear();
        break;
      case "C":
        comController.text = str.substring(0, str.length - 1);
        break;
      case "×":
        comController.text += '*';
        break;
      case '÷':
        comController.text += '/';
        break;
      case '^':
        comController.text += '^';
      case '=':
        compute();
        break;
      default:
        comController.text += value;
    }
    comController.selection = TextSelection.fromPosition(
        TextPosition(offset: comController.text.length));
  }

  compute() {
    String text = comController.text;
    comController.text = text.interpret().toString();
  }

  void dipose() {
    super.dispose();
    comController.dispose();
  }
}
