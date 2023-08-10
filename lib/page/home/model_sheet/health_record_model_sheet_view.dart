import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thaimai/constant/color_constant.dart';
import 'package:thaimai/project_specific/text_theme.dart';
import '../../../constant/asset_constant.dart';
import '../medical_report_page.dart';

class HealthRecordModelSheetView extends StatefulWidget {
  const HealthRecordModelSheetView({super.key});

  @override
  State<HealthRecordModelSheetView> createState() => _HealthRecordModelSheetViewState();
}

class _HealthRecordModelSheetViewState extends State<HealthRecordModelSheetView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: ColorConstants.textWhite,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          )),
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 50),
              Text(
                "Clinical Report",
                style: AppTextTheme.medium.copyWith(fontSize: 24, color: ColorConstants.textBlackColor),
              ),
              const SizedBox(height: 3),
              Container(
                height: 3,
                width: 130,
                decoration: BoxDecoration(
                  color: ColorConstants.containerGrayColor,
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.only(right: 165, left: 165),
                child: Center(
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        height: 23,
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(color: ColorConstants.lightGreenColor, borderRadius: BorderRadius.circular(15)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(width: 2),
                            Text(
                              "Pulse Rate",
                              style: AppTextTheme.regular.copyWith(
                                fontSize: 10,
                                color: ColorConstants.greenColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        left: -17,
                        top: 0,
                        bottom: 3,
                        child: Image.asset(
                          AssetConstant.bitIcon,
                          height: 34,
                          width: 34,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Divider(
                color: ColorConstants.dividerColor,
                height: 1,
                indent: 40,
                endIndent: 40,
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 45, right: 45),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                AssetConstant.bloodPressureIcon,
                                height: 14,
                              ),
                              Text(
                                " BP",
                                style: AppTextTheme.regular.copyWith(fontSize: 14, color: ColorConstants.textLightBrown),
                              )
                            ],
                          ),
                          const SizedBox(height: 5),
                          Text(
                            "70/70",
                            style: AppTextTheme.bold.copyWith(
                              fontSize: 10,
                              color: ColorConstants.textLightShade,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                AssetConstant.weightScaleIcon,
                                height: 14,
                              ),
                              Text(
                                " Weight",
                                style: AppTextTheme.regular.copyWith(fontSize: 14, color: ColorConstants.textLightBrown),
                              )
                            ],
                          ),
                          const SizedBox(height: 5),
                          Text(
                            "65kg",
                            style: AppTextTheme.bold.copyWith(
                              fontSize: 10,
                              color: ColorConstants.textLightShade,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                AssetConstant.heightIcon,
                                height: 14,
                              ),
                              Text(
                                " F Height",
                                style: AppTextTheme.regular.copyWith(fontSize: 14, color: ColorConstants.textLightBrown),
                              )
                            ],
                          ),
                          const SizedBox(height: 5),
                          Text(
                            "5.5cm",
                            style: AppTextTheme.bold.copyWith(
                              fontSize: 10,
                              color: ColorConstants.textLightShade,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Divider(
                color: ColorConstants.dividerColor,
                height: 1,
                endIndent: 40,
                indent: 40,
              ),
              const SizedBox(height: 17),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(AssetConstant.pedalPresentIcon, height: 10),
                  const SizedBox(width: 2),
                  Text(
                    "Pedal Edema Present : NIL",
                    style: AppTextTheme.regular.copyWith(fontSize: 8, color: ColorConstants.textLightBlueGrayColor),
                  )
                ],
              ),
              const SizedBox(height: 12),
              Container(
                width: 111,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: ColorConstants.yellowLightColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(AssetConstant.healthIcon, height: 7),
                    const SizedBox(width: 3),
                    Text(
                      "HFS : 140",
                      style: AppTextTheme.regular.copyWith(fontSize: 8, color: ColorConstants.textLightShade),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 21),
              InkWell(
                onTap: () {
                  Get.back();
                  Get.to(() => const MedicalReportPage());
                },
                child: Container(
                  margin: const EdgeInsets.only(left: 40, right: 40, bottom: 50),
                  height: 54,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: ColorConstants.greenColorData),
                  child: Center(
                    child: Text(
                      "Update Record",
                      style: AppTextTheme.medium.copyWith(color: ColorConstants.textWhite, fontSize: 18),
                    ),
                  ),
                ),
              )
            ],
          ),
          Positioned(
            top: -50,
            child: Container(
              width: 92,
              height: 92,
              decoration: const ShapeDecoration(
                color: Colors.white,
                shape: OvalBorder(
                  side: BorderSide(width: 0.50, color: Color(0xFFFFCCD3)),
                ),
              ),
              child: Center(
                child: Image.asset(
                  AssetConstant.clinikReport,
                  height: 50,
                  width: 50,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
