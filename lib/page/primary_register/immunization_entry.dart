import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thaimai/constant/asset_constant.dart';
import 'package:thaimai/constant/color_constant.dart';
import 'package:thaimai/project_specific/button_widget.dart';
import 'package:thaimai/project_specific/text_theme.dart';

import 'delivery_details_page.dart';

class ImmunizationEntryPage extends StatefulWidget {
  const ImmunizationEntryPage({super.key});

  @override
  State<ImmunizationEntryPage> createState() => _ImmunizationEntryPageState();
}

class _ImmunizationEntryPageState extends State<ImmunizationEntryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Get.width,
        height: Get.height,
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage(AssetConstant.loginBg), fit: BoxFit.cover),
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
                    "Immunization Entry",
                    style: AppTextTheme.medium.copyWith(fontSize: 18, color: ColorConstants.textLightBrown),
                  )
                ],
              ),
            ),
            const SizedBox(height: 12),
            Expanded(
                child: SingleChildScrollView(
              child: Container(
                width: Get.width,
                padding: const EdgeInsets.only(left: 15, bottom: 13, top: 18, right: 15),
                margin: const EdgeInsets.only(left: 20, right: 20),
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  color: ColorConstants.textWhite,
                  shadows: const [
                    BoxShadow(
                      color: Color(0x0C000000),
                      blurRadius: 20,
                      offset: Offset(0, 0),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Dose Number",
                      style: AppTextTheme.medium.copyWith(fontSize: 14, color: ColorConstants.textBlackColor),
                    ),
                    const SizedBox(height: 10),
                    Container(
                        height: 54,
                        padding: const EdgeInsets.only(left: 10, right: 25),
                        width: Get.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: ColorConstants.textLightShade, width: 1),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "--Select--",
                              style: AppTextTheme.regular.copyWith(fontSize: 16, color: ColorConstants.textLightShade),
                            ),
                            Image.asset(
                              AssetConstant.downArrowIcon,
                              width: 10,
                              height: 10,
                            )
                          ],
                        )),
                    const SizedBox(height: 15),
                    Text(
                      "Due provided Date",
                      style: AppTextTheme.medium.copyWith(fontSize: 14, color: ColorConstants.textBlackColor),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 54,
                          width: 95,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: ColorConstants.textLightShade, width: 1),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Day",
                                style: AppTextTheme.regular.copyWith(fontSize: 16, color: ColorConstants.textLightShade),
                              ),
                              Image.asset(
                                AssetConstant.downArrowIcon,
                                width: 10,
                                height: 10,
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 54,
                          width: 95,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: ColorConstants.textLightShade, width: 1),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Month",
                                style: AppTextTheme.regular.copyWith(fontSize: 16, color: ColorConstants.textLightShade),
                              ),
                              Image.asset(
                                AssetConstant.downArrowIcon,
                                width: 10,
                                height: 10,
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 54,
                          width: 95,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: ColorConstants.textLightShade, width: 1),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Year",
                                style: AppTextTheme.regular.copyWith(fontSize: 16, color: ColorConstants.textLightShade),
                              ),
                              Image.asset(
                                AssetConstant.downArrowIcon,
                                width: 10,
                                height: 10,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Text(
                      "Care provided Date",
                      style: AppTextTheme.medium.copyWith(fontSize: 14, color: ColorConstants.textBlackColor),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 54,
                          width: 95,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: ColorConstants.textLightShade, width: 1),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Day",
                                style: AppTextTheme.regular.copyWith(fontSize: 16, color: ColorConstants.textLightShade),
                              ),
                              Image.asset(
                                AssetConstant.downArrowIcon,
                                width: 10,
                                height: 10,
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 54,
                          width: 95,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: ColorConstants.textLightShade, width: 1),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Month",
                                style: AppTextTheme.regular.copyWith(fontSize: 16, color: ColorConstants.textLightShade),
                              ),
                              Image.asset(
                                AssetConstant.downArrowIcon,
                                width: 10,
                                height: 10,
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 54,
                          width: 95,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: ColorConstants.textLightShade, width: 1),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Year",
                                style: AppTextTheme.regular.copyWith(fontSize: 16, color: ColorConstants.textLightShade),
                              ),
                              Image.asset(
                                AssetConstant.downArrowIcon,
                                width: 10,
                                height: 10,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Text(
                      "opv",
                      style: AppTextTheme.medium.copyWith(fontSize: 14, color: ColorConstants.textBlackColor),
                    ),
                    const SizedBox(height: 10),
                    Container(
                        height: 54,
                        padding: const EdgeInsets.only(left: 10, right: 25),
                        width: Get.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: ColorConstants.textLightShade, width: 1),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "--Select--",
                              style: AppTextTheme.regular.copyWith(fontSize: 16, color: ColorConstants.textLightShade),
                            ),
                            Image.asset(
                              AssetConstant.downArrowIcon,
                              width: 10,
                              height: 10,
                            )
                          ],
                        )),
                    const SizedBox(height: 15),
                    Text(
                      "Pentavalent",
                      style: AppTextTheme.medium.copyWith(fontSize: 14, color: ColorConstants.textBlackColor),
                    ),
                    const SizedBox(height: 10),
                    Container(
                        height: 54,
                        padding: const EdgeInsets.only(left: 10, right: 25),
                        width: Get.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: ColorConstants.textLightShade, width: 1),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "--Select--",
                              style: AppTextTheme.regular.copyWith(fontSize: 16, color: ColorConstants.textLightShade),
                            ),
                            Image.asset(
                              AssetConstant.downArrowIcon,
                              width: 10,
                              height: 10,
                            )
                          ],
                        )),
                    const SizedBox(height: 30),
                  ],
                ),
              ),
            )),
            Padding(
              padding: const EdgeInsets.only(bottom: 50, left: 50, right: 50),
              child: CircleRadiusButton(
                buttonTitle: "Continue",
                onPressed: () {
                  Get.to(() => const DeliveryDetailsPage());
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
