import 'package:flutter/material.dart';

class TabBarText extends StatelessWidget {
  final String text;
  final Color color;
  final double fontSize;

  const TabBarText({
    Key? key,
    required this.text,
    required this.color,
    required this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: FontWeight.w700,
      ),
      textAlign: TextAlign.center,
    );
  }
}
