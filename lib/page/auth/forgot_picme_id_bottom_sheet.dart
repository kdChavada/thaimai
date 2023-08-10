import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thaimai/api/dio_client.dart';
import 'package:thaimai/constant/color_constant.dart';
import 'package:thaimai/project_specific/button_widget.dart';
import 'package:thaimai/project_specific/text_theme.dart';

class ForGotPICMEIDSheet extends StatefulWidget {
  const ForGotPICMEIDSheet({super.key});

  @override
  State<ForGotPICMEIDSheet> createState() => _ForGotPICMEIDSheetState();
}

class _ForGotPICMEIDSheetState extends State<ForGotPICMEIDSheet> {
  final _emailTextEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 20),
          Center(
            child: Container(
              height: 5,
              width: 130,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(6), color: ColorConstants.containerGrayColor),
            ),
          ),
          const SizedBox(height: 55),
          Text(
            "Forgot PICME",
            textScaleFactor: 0.85,
            style: AppTextTheme.medium.copyWith(fontSize: 24, color: ColorConstants.textBlackColor),
          ),
          const SizedBox(height: 12),
          Text(
            "Enter your email for the verification process,we will send 4 digits code to your email.",
            textScaleFactor: 0.85,
            style: AppTextTheme.regular.copyWith(fontSize: 14, color: ColorConstants.textLightShade),
          ),
          const SizedBox(height: 40),
          Container(
            height: 54,
            padding: const EdgeInsets.only(left: 25),
            width: Get.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: ColorConstants.textLightShade, width: 1),
            ),
            child: Center(
              child: TextField(
                controller: _emailTextEditingController,
                decoration: const InputDecoration(hintText: "Email", border: InputBorder.none),
              ),
            ),
          ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.only(right: 40, left: 40),
            child: CircleRadiusButton(
                buttonTitle: "Continue",
                onPressed: () {
                  doForgotPICMEID();
                }),
          ),
          const SizedBox(height: 15),
        ],
      ),
    );
  }

  /*--------------- check Validation for PICME-ID -----------*/
  doForgotPICMEID() {
    if (_emailTextEditingController.text.isEmpty) {
      showMessage("Please enter email address");
    } else {
      Get.back();
    }
  }
}
