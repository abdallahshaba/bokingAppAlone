import 'package:booking_app_alone/core/assets.dart';
import 'package:booking_app_alone/core/font_styles.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
 with SingleTickerProviderStateMixin {
 late AnimationController animationController;
 late Animation<Offset> slidingAnimaton;


 @override
  void initState() {
    super.initState();
    animationController = AnimationController(vsync: this ,
    duration: const Duration(seconds: 1),
    );
    slidingAnimaton = Tween<Offset>(begin: const Offset(0, 2),
    end: Offset.zero).animate(animationController);

    animationController.forward();
    slidingAnimaton.addListener(() {});
  }
  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetData.logo),
        AnimatedBuilder(
          animation: slidingAnimaton,
          builder: (context, child) {
            return SlideTransition(
          position: slidingAnimaton,
           child: const Text('Read Free Books ..' , 
           style: FontStyles.fontSize16, textAlign: TextAlign.center,
           ),
         );
          },
       )
      ],
    ));
  }
}