import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thaimai/constant/asset_constant.dart';
import 'package:thaimai/constant/color_constant.dart';
import 'package:thaimai/project_specific/button_widget.dart';
import 'package:thaimai/project_specific/text_theme.dart';

import 'primary_record_personal_details_page.dart';

class LocationServicePage extends StatelessWidget {
  const LocationServicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Get.width,
        height: Get.height,
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage(AssetConstant.lgBgImage), fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            const SizedBox(height: 37),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: ColorConstants.textWhite),
                      child: Center(
                        child: Icon(Icons.arrow_back_ios_new_outlined, size: 20, color: ColorConstants.textLightShade),
                      ),
                    ),
                  ),
                  const SizedBox(width: 19),
                  Text(
                    "Enable Location Services",
                    style: AppTextTheme.medium.copyWith(fontSize: 18, color: ColorConstants.textLightBrown),
                  )
                ],
              ),
            ),
            const SizedBox(height: 95),
            Container(
              height: 242,
              width: 242,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: const Color(0xFFC6EFE5).withOpacity(0.76),
              ),
              child: Center(
                child: Image.asset(
                  AssetConstant.locationImage,
                  width: 100,
                  height: 100,
                ),
              ),
            ),
            const SizedBox(height: 26),
            Text(
              "Location",
              style: AppTextTheme.bold.copyWith(fontSize: 22, color: ColorConstants.textLightBlackColor),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 36, right: 36, top: 13),
              child: Text(
                "Your location services are switched off. Please enable location, to help us serve better.",
                textAlign: TextAlign.center,
                style: AppTextTheme.regular.copyWith(fontSize: 14, color: ColorConstants.textLightShade),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 52, left: 52, top: 33),
              child: CircleRadiusButton(
                color: ColorConstants.greenColorData,
                buttonTitle: "Enable Location",
                onPressed: () {
                  Get.to(() => const PrimaryRecordPersonalDetails());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
