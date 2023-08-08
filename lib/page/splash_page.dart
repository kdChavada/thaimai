import 'dart:async';

import 'package:flutter/material.dart';
import 'package:thaimai/constant/asset_constant.dart';
import 'package:thaimai/constant/color_constant.dart';
import 'package:thaimai/project_specific/text_theme.dart';

import 'onboarding/onboarding_page_1.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage(AssetConstant.loginBg),
            fit: BoxFit.cover,
          )),
          child: Center(
            child: Text(
              "Thaimai",
              style: AppTextTheme.bold.copyWith(fontSize: 25, color: ColorConstants.textLightBlackColor),
            ),
          )),
    );
  }

  startTime() async {
    var duration = const Duration(seconds: 4);
    return Timer(duration, route);
  }

  route() {
    Navigator.pushAndRemoveUntil<void>(
      context,
      MaterialPageRoute<void>(
        builder: (BuildContext context) => const OnBoardingPage(),
      ),
      (Route<dynamic> route) => false,
    );
  }
}
