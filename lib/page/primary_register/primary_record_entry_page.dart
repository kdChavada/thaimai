import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thaimai/constant/asset_constant.dart';
import 'package:thaimai/constant/color_constant.dart';
import 'package:thaimai/page/primary_register/immunization_entry.dart';
import 'package:thaimai/project_specific/button_widget.dart';
import 'package:thaimai/project_specific/text_theme.dart';

class PrimaryRecordEntryPage extends StatefulWidget {
  const PrimaryRecordEntryPage({super.key});

  @override
  State<PrimaryRecordEntryPage> createState() => _PrimaryRecordEntryPageState();
}

class _PrimaryRecordEntryPageState extends State<PrimaryRecordEntryPage> {
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
                    "Primary record Entry",
                    style: AppTextTheme.medium.copyWith(fontSize: 18, color: ColorConstants.textLightBrown),
                  )
                ],
              ),
            ),
            const SizedBox(height: 12),
            Container(
              padding: const EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
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
              child: Row(
                children: [
                  Text("Step 1/4", style: AppTextTheme.medium.copyWith(color: ColorConstants.textBlackColor, fontSize: 14)),
                  const SizedBox(width: 15),
                  SizedBox(
                    width: 234,
                    height: 5,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: 234,
                            height: 5,
                            decoration: ShapeDecoration(
                              color: const Color(0x4C0EBE7F),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: 90,
                            height: 5,
                            decoration: ShapeDecoration(
                              color: const Color(0xFF0EBE7F),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 25),
            Container(
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
                    "Histroy of any Illness",
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
                    "Histroy of any family Illness",
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
                    "Any Surgery done before",
                    style: AppTextTheme.medium.copyWith(fontSize: 14, color: ColorConstants.textBlackColor),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 16,
                            width: 16,
                            padding: const EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: ColorConstants.textLightShade, width: 1),
                            ),
                            child: Container(
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: ColorConstants.greenColorData,
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Text(
                            "Yes",
                            style: AppTextTheme.light.copyWith(fontSize: 16, color: ColorConstants.textLightShade),
                          )
                        ],
                      ),
                      const SizedBox(width: 30),
                      Row(
                        children: [
                          Container(
                            height: 16,
                            width: 16,
                            padding: const EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: ColorConstants.textLightShade, width: 1),
                            ),
                            child: Container(
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: ColorConstants.transParent,
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Text(
                            "No",
                            style: AppTextTheme.light.copyWith(fontSize: 16, color: ColorConstants.textLightShade),
                          )
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Text(
                    "On Any Medication",
                    style: AppTextTheme.medium.copyWith(fontSize: 14, color: ColorConstants.textBlackColor),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 16,
                            width: 16,
                            padding: const EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: ColorConstants.textLightShade, width: 1),
                            ),
                            child: Container(
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: ColorConstants.greenColorData,
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Text(
                            "Yes",
                            style: AppTextTheme.light.copyWith(fontSize: 16, color: ColorConstants.textLightShade),
                          )
                        ],
                      ),
                      const SizedBox(width: 30),
                      Row(
                        children: [
                          Container(
                            height: 16,
                            width: 16,
                            padding: const EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: ColorConstants.textLightShade, width: 1),
                            ),
                            child: Container(
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: ColorConstants.transParent,
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Text(
                            "No",
                            style: AppTextTheme.light.copyWith(fontSize: 16, color: ColorConstants.textLightShade),
                          )
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Text(
                    "Allery to any drugs",
                    style: AppTextTheme.medium.copyWith(fontSize: 14, color: ColorConstants.textBlackColor),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 16,
                            width: 16,
                            padding: const EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: ColorConstants.textLightShade, width: 1),
                            ),
                            child: Container(
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: ColorConstants.greenColorData,
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Text(
                            "Yes",
                            style: AppTextTheme.light.copyWith(fontSize: 16, color: ColorConstants.textLightShade),
                          )
                        ],
                      ),
                      const SizedBox(width: 30),
                      Row(
                        children: [
                          Container(
                            height: 16,
                            width: 16,
                            padding: const EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: ColorConstants.textLightShade, width: 1),
                            ),
                            child: Container(
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: ColorConstants.transParent,
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Text(
                            "No",
                            style: AppTextTheme.light.copyWith(fontSize: 16, color: ColorConstants.textLightShade),
                          )
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50, left: 50, right: 50),
              child: CircleRadiusButton(
                buttonTitle: "Continue",
                onPressed: () {
                  Get.to(()=>const ImmunizationEntryPage());
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
