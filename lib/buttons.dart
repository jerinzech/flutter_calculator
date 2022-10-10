import 'package:flutter/material.dart';
import 'package:flutter_calculator/contants.dart';

class MyButton extends StatelessWidget {
  final color;

  final String? buttonText;
  final buttonStyle;

  const MyButton({this.color, this.buttonText, this.buttonStyle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          color: color,
          child: Center(
            child: Text(
              buttonText!,
              style: buttonStyle,
            ),
          ),
        ),
      ),
    );
  }
}
