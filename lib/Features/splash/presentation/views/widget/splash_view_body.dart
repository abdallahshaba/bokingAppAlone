import 'package:booking_app_alone/core/assets.dart';
import 'package:booking_app_alone/core/font_styles.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetData.logo),
       const Text('Read Free Books ..' , 
       style: FontStyles.fontSize16, textAlign: TextAlign.center,
       ),
      ],
    ));
  }
}