import 'package:crypto_trade_screen/resources/app_colors.dart';
import 'package:crypto_trade_screen/screens/trade_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        backgroundColor: AppColors.background,
          textTheme: GoogleFonts.gothicA1TextTheme(),

      ),
      home: TradeScreen(),
    );
  }
}