import 'package:flutter/material.dart';

class textfield extends StatelessWidget {
  const textfield({super.key, required this.controller});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 30),
      child: TextField(
        controller: controller,
        readOnly: true,
        autofocus: true,
        showCursor: true,
        textAlign: TextAlign.right,
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            fillColor: Colors.white,
            filled: true),
        style: TextStyle(fontSize: 50, color: Colors.black),
      ),
    );
  }
}
