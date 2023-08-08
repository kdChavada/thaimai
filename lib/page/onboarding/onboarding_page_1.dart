import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thaimai/constant/asset_constant.dart';
import 'package:thaimai/constant/color_constant.dart';
import 'package:thaimai/project_specific/button_widget.dart';
import 'package:thaimai/project_specific/text_theme.dart';

import '../auth/login_page.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage(AssetConstant.onboardingPage), fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 90),
              height: 336,
              width: 336,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: ColorConstants.transParent,
                  image: const DecorationImage(
                      image: NetworkImage(
                          "https://images.unsplash.com/photo-1576091160399-112ba8d25d1d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80"),
                      fit: BoxFit.cover)),
            ),
            const SizedBox(height: 50),
            Text(
              "Easy track of Medical \n Records",
              style: AppTextTheme.medium.copyWith(fontSize: 28, color: ColorConstants.textLightBrown),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 43, right: 43),
              child: Text(
                "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of it over 2000 years old.",
                style: AppTextTheme.regular.copyWith(fontSize: 14, color: ColorConstants.textLightGray, height: 1.5),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 35, right: 35, top: 50),
              child: CircleRadiusButton(
                buttonTitle: "Get Started",
                onPressed: () {
                  Get.offAll(() => const LoginPage());
                },
              ),
            ),
            TextButton(
              onPressed: () {
                Get.offAll(() => const LoginPage());
              },
              child: Text(
                "Skip",
                style: AppTextTheme.regular.copyWith(fontSize: 14, color: ColorConstants.textLightShade),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
