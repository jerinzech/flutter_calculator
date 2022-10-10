import 'dart:isolate';

import 'package:flutter/material.dart';
import 'package:flutter_calculator/buttons.dart';
import 'package:flutter_calculator/contants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(child: HomePage()),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> buttons = [
    'CLR',
    'DEL',
    '%',
    '/',
    '7',
    '8',
    '9',
    'x',
    '4',
    '5',
    '6',
    '-',
    '1',
    '2',
    '3',
    '+',
    '0',
    '.',
    'ANS',
    '=',
  ];

  // bool isOperatorr;
  // bool isNumber;
  // bool isText;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            AppColors.mainBGColor,
            AppColors.mainBGColor2,
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(children: <Widget>[
          Expanded(
            child: Container(
              color: Colors.transparent,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.transparent,
              child: Center(
                child: GridView.builder(
                    itemCount: buttons.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4),
                    itemBuilder: (BuildContext context, int index) {
                      if (index == 0) {
                        return MyButton(
                          buttonText: buttons[index],
                          color: AppColors.textBtnColor,
                          buttonStyle: AppTextStyle.textStyle,
                        );
                      } else if (index == 1) {
                        return MyButton(
                          buttonText: buttons[index],
                          color: AppColors.textBtnColor,
                          buttonStyle: AppTextStyle.textStyle,
                        );
                      } else if (index == 18) {
                        return MyButton(
                          buttonText: buttons[index],
                          color: AppColors.textBtnColor,
                          buttonStyle: AppTextStyle.textStyle,
                        );
                      } else {
                        return MyButton(
                          buttonText: buttons[index],
                          color: isOperator(buttons[index])
                              ? AppColors.operatorBtnColor
                              : AppColors.numberBtnColor,
                          buttonStyle: isOperator(buttons[index])
                              ? AppTextStyle.operatorStyle
                              : AppTextStyle.numberStyle,
                        );
                      }
                    }),
              ),
            ),
          ),
        ]),
      ),
    );
  }

  bool isOperator(String x) {
    if (x == '%' || x == '/' || x == '-' || x == '+' || x == '=' || x == 'x') {
      return true;
    } else {
      return false;
    }
  }

  // valueCheck(String x) {
  //   if (x == '%' || x == '/' || x == '-' || x == '+' || x == '=' || x == 'x') {
  //     isNumber = false;
  //     isText = false;
  //     return isOperatorr = true;
  //   } else if (x == 'CLR' || x == 'DEL' || x == 'ANS') {
  //     isNumber = false;
  //     isOperatorr = false;
  //     return isText = true;
  //   } else {
  //     isOperatorr = false;
  //     isText = false;
  //     return isNumber = true;
  //   }
  // }
}


//  style:isOperator(buttons[index])
//                           ? AppTextStyle.operatorStyle
//                           : AppTextStyle.numberStyle;