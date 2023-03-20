import 'package:crypto_trade_screen/resources/app_icons.dart';
import 'package:crypto_trade_screen/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';

import '../resources/app_colors.dart';
import '../widgets/coin_amount_info.dart';
import '../widgets/custom_tab_bar.dart';

class TradeScreen extends StatefulWidget {
  const TradeScreen({Key? key}) : super(key: key);

  @override
  State<TradeScreen> createState() => _TradeScreenState();
}

class _TradeScreenState extends State<TradeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 5.0, right: 5.0),
          child: Column(
            children: [
              const SizedBox(height: 5.0),
              const CustomTabBar(),
              const SizedBox(height: 16.0),
              Row(
                children: [
                  Image.asset(
                    AppIcons.icon1,
                    height: 9,
                    width: 15,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    'BTC/USDT',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    width: 64,
                    height: 24,
                    decoration: BoxDecoration(
                      color: AppColors.green12,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Center(
                      child: Text(
                        '+2.38%',
                        style: TextStyle(
                          fontSize: 14,
                          color: AppColors.green,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 92),
                  Image.asset(
                    AppIcons.icon2,
                    height: 15,
                    width: 10,
                  ),
                  const SizedBox(width: 20),
                  Image.asset(
                    AppIcons.icon3,
                    height: 4,
                    width: 18,
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  Column(
                    children: [
                      CoinAmountInfo(
                        text: '43,805.35',
                        color: Colors.white,
                      ),
                      const SizedBox(height: 14),
                      CoinAmountInfo(
                        text: 'Amount (BTC)',
                        color: AppColors.grey,
                      ),
                      const SizedBox(height: 34),
                      CustomTextButton(
                        text: 'Total (USDT)',
                        fontSize: 14,
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
