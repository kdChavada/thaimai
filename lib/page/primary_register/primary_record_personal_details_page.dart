import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thaimai/constant/asset_constant.dart';
import 'package:thaimai/constant/color_constant.dart';
import 'package:thaimai/page/primary_register/primary_record_entry_page.dart';
import 'package:thaimai/project_specific/button_widget.dart';
import 'package:thaimai/project_specific/text_theme.dart';

class PrimaryRecordPersonalDetails extends StatefulWidget {
  const PrimaryRecordPersonalDetails({super.key});

  @override
  State<PrimaryRecordPersonalDetails> createState() => _PrimaryRecordPersonalDetailsState();
}

class _PrimaryRecordPersonalDetailsState extends State<PrimaryRecordPersonalDetails> {
  final _motherNameTextEditingController = TextEditingController();
  final _primaryMobileNumberTextEditingController = TextEditingController();
  final _alterNativeMobileNumberTextEditingController = TextEditingController();

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
                    "Primary record - Personal Details",
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
                      "Mother Name",
                      style: AppTextTheme.medium.copyWith(fontSize: 14, color: ColorConstants.textBlackColor),
                    ),
                    const SizedBox(height: 10),
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
                          controller: _motherNameTextEditingController,
                          decoration: const InputDecoration(
                            hintText: "Name of Mother",
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Text(
                      "LMP Date",
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
                      "EDD Date",
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
                      "Primary Mobile number",
                      style: AppTextTheme.medium.copyWith(fontSize: 14, color: ColorConstants.textBlackColor),
                    ),
                    const SizedBox(height: 10),
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
                          controller: _primaryMobileNumberTextEditingController,
                          decoration: const InputDecoration(
                            hintText: "+9191000000000",
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Text(
                      "Alternative Mobile number",
                      style: AppTextTheme.medium.copyWith(fontSize: 14, color: ColorConstants.textBlackColor),
                    ),
                    const SizedBox(height: 10),
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
                          controller: _alterNativeMobileNumberTextEditingController,
                          decoration: const InputDecoration(
                            hintText: "+9191000000000",
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )),
            Padding(
              padding: const EdgeInsets.only(bottom: 50, left: 50, right: 50),
              child: CircleRadiusButton(
                buttonTitle: "Continue",
                onPressed: () {
                  Get.to(()=>const PrimaryRecordEntryPage());
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
