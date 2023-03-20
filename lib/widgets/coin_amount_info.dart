import 'package:flutter/material.dart';

import '../resources/app_colors.dart';

class CoinAmountInfo extends StatelessWidget {
  final String text;
  final Color color;

  const CoinAmountInfo({
    Key? key,
    required this.text,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 42,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6.0),
        color: AppColors.darkGrey,
      ),
      child: Padding(
        padding: const EdgeInsets.only(right: 15, left: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.remove,
              color: AppColors.grey,
              size: 16,
            ),
            Text(
              text,
              style: TextStyle(
                color: color,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            Icon(
              Icons.add,
              color: AppColors.grey,
              size: 16,
            ),
          ],
        ),
      ),
    );
  }
}
