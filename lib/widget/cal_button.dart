import 'package:calc/provider/cal_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class cal_button extends StatelessWidget {
  final String label;
  const cal_button({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.sizeOf(context).width;
    double n = 70;
    return InkWell(
      onTap: () => Provider.of<CalculatorProvider>(context, listen: false)
          .setValue(label),
      child: Container(
        width: screenwidth / 2.5,
        height: n,
        decoration: ShapeDecoration(
          color: Color(0xFFF7D044),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(55),
          ),
        ),
        child: Center(
          child: Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w400,
              height: 0,
            ),
          ),
        ),
      ),
    );
  }
}
