import 'package:crypto_trade_screen/resources/app_colors.dart';
import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final String text;
  final Color color;
  final FontWeight fontWeight;
  final Color buttonColor;

  const CustomTextButton({
    Key? key,
    required this.text,
    required this.color,
    required this.fontWeight, required this.buttonColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 42,
      width: 200,
      decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontSize: 16,
            color: color,
            fontWeight: fontWeight,
          ),
        ),
      ),
    );
  }
}
