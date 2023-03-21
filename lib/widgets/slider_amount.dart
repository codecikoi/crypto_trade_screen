import 'package:crypto_trade_screen/resources/app_colors.dart';
import 'package:flutter/material.dart';

class SliderAmount extends StatefulWidget {
  const SliderAmount({Key? key}) : super(key: key);

  @override
  State<SliderAmount> createState() => _SliderAmountState();
}

class _SliderAmountState extends State<SliderAmount> {
  double _currentSliderValue = 25;

  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: SliderThemeData(
      ),
      child: Slider(
        value: _currentSliderValue,
        max: 100,
        divisions: 4,
        thumbColor: AppColors.blue,
        activeColor: AppColors.blue,
        inactiveColor: AppColors.grey,
        onChanged: (double value) {
          setState(() {
            _currentSliderValue = value;
          });
        },
      ),
    );
  }
}
