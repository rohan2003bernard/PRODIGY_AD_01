import 'package:calc/provider/cal_provider.dart';
import 'package:calc/screens/widget_data.dart';

import 'package:calc/widget/textfield.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.sizeOf(context).height;
    final screenwidth = MediaQuery.sizeOf(context).width;
    return Consumer<CalculatorProvider>(builder: (context, provider, _) {
      return Scaffold(
        backgroundColor: Colors.black,
        appBar: _appbar(),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            child: Column(
              children: [
                textfield(
                  controller: provider.comController,
                ),
                //Padding(padding: EdgeInsets.only(top: 40)),
                Container(
                  height: screenHeight * 0.55,
                  //color: Colors.red,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:
                            List.generate(4, (index) => buttonList[index]),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:
                            List.generate(4, (index) => buttonList[index + 4]),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:
                            List.generate(4, (index) => buttonList[index + 8]),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:
                            List.generate(4, (index) => buttonList[index + 12]),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: (screenwidth / 2.4),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: List.generate(
                                  2, (index) => buttonList[index + 16]),
                            ),
                          ),
                          Row(
                            children: List.generate(
                                1, (index) => buttonList[index + 18]),
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      );
    });
  }

  AppBar _appbar() {
    return AppBar(
      backgroundColor: Color(0xFF4561F8),
      title: Text(
        'Calculator',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontSize: 35,
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w600,
          height: 0,
          letterSpacing: 1.40,
        ),
      ),
      centerTitle: true,
    );
  }
}
