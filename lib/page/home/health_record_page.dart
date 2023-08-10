import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thaimai/constant/asset_constant.dart';
import 'package:thaimai/constant/color_constant.dart';
import 'package:thaimai/page/home/model_sheet/health_record_model_sheet_view.dart';
import 'package:thaimai/project_specific/text_theme.dart';

class HealthRecordPage extends StatefulWidget {
  const HealthRecordPage({super.key});

  @override
  State<HealthRecordPage> createState() => _HealthRecordPageState();
}

class _HealthRecordPageState extends State<HealthRecordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        decoration: const BoxDecoration(image: DecorationImage(image: AssetImage(AssetConstant.homeBg), fit: BoxFit.cover)),
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 139,
                  padding: const EdgeInsets.only(right: 20, left: 20, top: 8),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                    gradient: LinearGradient(
                      begin: Alignment(0.98, -0.19),
                      end: Alignment(-0.98, 0.19),
                      colors: [Color(0xE5FF637B), Color(0x70E6007E)],
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "Health Record",
                      style: AppTextTheme.medium.copyWith(fontSize: 18, color: ColorConstants.textWhite),
                    ),
                  ),
                ),
                Positioned(
                  top: 115,
                  right: 20,
                  left: 20,
                  child: Container(
                    padding: const EdgeInsets.only(left: 11, right: 17, top: 11, bottom: 5),
                    decoration: BoxDecoration(color: ColorConstants.textWhite, borderRadius: BorderRadius.circular(6)),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 29,
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                shadows: const [
                                  BoxShadow(
                                    color: Color(0x11000000),
                                    blurRadius: 4,
                                    offset: Offset(0, 4),
                                    spreadRadius: 0,
                                  )
                                ],
                              ),
                              child: Row(
                                children: [
                                  const SizedBox(width: 2),
                                  Container(
                                    width: 22,
                                    height: 22,
                                    decoration: const ShapeDecoration(
                                      color: Color(0x3006AD70),
                                      shape: OvalBorder(),
                                    ),
                                    child: Center(
                                      child: Text.rich(
                                        TextSpan(
                                          children: [
                                            TextSpan(
                                              text: '1 ',
                                              style: AppTextTheme.bold.copyWith(
                                                fontSize: 12,
                                                color: const Color(0xFF1A8947),
                                              ),
                                            ),
                                            TextSpan(
                                              text: 'st',
                                              style: AppTextTheme.medium.copyWith(
                                                fontSize: 6,
                                                color: const Color(0xFF1A8947),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 9),
                                  Text(
                                    "Visit",
                                    style: AppTextTheme.medium.copyWith(fontSize: 12, color: ColorConstants.textLightShade),
                                  ),
                                  const SizedBox(width: 4),
                                ],
                              ),
                            ),
                            Container(
                              height: 29,
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                shadows: const [
                                  BoxShadow(
                                    color: Color(0x11000000),
                                    blurRadius: 4,
                                    offset: Offset(0, 4),
                                    spreadRadius: 0,
                                  )
                                ],
                              ),
                              child: Row(
                                children: [
                                  const SizedBox(width: 2),
                                  Container(
                                    width: 22,
                                    height: 22,
                                    decoration: const ShapeDecoration(
                                      color: Color(0x3006AD70),
                                      shape: OvalBorder(),
                                    ),
                                    child: Center(
                                      child: Text.rich(
                                        TextSpan(
                                          children: [
                                            TextSpan(
                                              text: '2 ',
                                              style: AppTextTheme.bold.copyWith(
                                                fontSize: 12,
                                                color: const Color(0xFF1A8947),
                                              ),
                                            ),
                                            TextSpan(
                                              text: 'nd',
                                              style: AppTextTheme.medium.copyWith(
                                                fontSize: 6,
                                                color: const Color(0xFF1A8947),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 9),
                                  Text(
                                    "Visit",
                                    style: AppTextTheme.medium.copyWith(fontSize: 12, color: ColorConstants.textLightShade),
                                  ),
                                  const SizedBox(width: 4),
                                ],
                              ),
                            ),
                            Container(
                              height: 29,
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                shadows: const [
                                  BoxShadow(
                                    color: Color(0x11000000),
                                    blurRadius: 4,
                                    offset: Offset(0, 4),
                                    spreadRadius: 0,
                                  )
                                ],
                              ),
                              child: Row(
                                children: [
                                  const SizedBox(width: 2),
                                  Container(
                                    width: 22,
                                    height: 22,
                                    decoration: const ShapeDecoration(
                                      color: Color(0x3006AD70),
                                      shape: OvalBorder(),
                                    ),
                                    child: Center(
                                      child: Text.rich(
                                        TextSpan(
                                          children: [
                                            TextSpan(
                                              text: '3 ',
                                              style: AppTextTheme.bold.copyWith(
                                                fontSize: 12,
                                                color: const Color(0xFF1A8947),
                                              ),
                                            ),
                                            TextSpan(
                                              text: 'rd',
                                              style: AppTextTheme.medium.copyWith(
                                                fontSize: 6,
                                                color: const Color(0xFF1A8947),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 9),
                                  Text(
                                    "Visit",
                                    style: AppTextTheme.medium.copyWith(fontSize: 12, color: ColorConstants.textLightShade),
                                  ),
                                  const SizedBox(width: 4),
                                ],
                              ),
                            ),
                            Container(
                              height: 29,
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                shadows: const [
                                  BoxShadow(
                                    color: Color(0x11000000),
                                    blurRadius: 4,
                                    offset: Offset(0, 4),
                                    spreadRadius: 0,
                                  )
                                ],
                              ),
                              child: Row(
                                children: [
                                  const SizedBox(width: 2),
                                  Container(
                                    width: 22,
                                    height: 22,
                                    decoration: const ShapeDecoration(
                                      color: Color(0x3006AD70),
                                      shape: OvalBorder(),
                                    ),
                                    child: Center(
                                      child: Text.rich(
                                        TextSpan(
                                          children: [
                                            TextSpan(
                                              text: '4 ',
                                              style: AppTextTheme.bold.copyWith(
                                                fontSize: 12,
                                                color: const Color(0xFF1A8947),
                                              ),
                                            ),
                                            TextSpan(
                                              text: 'th',
                                              style: AppTextTheme.medium.copyWith(
                                                fontSize: 6,
                                                color: const Color(0xFF1A8947),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 9),
                                  Text(
                                    "Visit",
                                    style: AppTextTheme.medium.copyWith(fontSize: 12, color: ColorConstants.textLightShade),
                                  ),
                                  const SizedBox(width: 4),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 7),
                        Container(
                          height: 2,
                          decoration: BoxDecoration(color: const Color(0xffC4C4C4).withOpacity(0.10)),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 34,
                  padding: const EdgeInsets.all(9),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: ColorConstants.borderColor,width: 1),
                    boxShadow: const  [
                      BoxShadow(
                        color: Colors.white,
                      ),
                      BoxShadow(
                        color: Colors.white70,
                        spreadRadius: -5.0,
                        blurRadius: 20.0,
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Image.asset(AssetConstant.uniceflogoIcon),
                      Text(
                        "Picme Visit",
                        style: AppTextTheme.medium.copyWith(fontSize: 10, color: ColorConstants.textLightShade),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 5),
                Container(
                  height: 34,
                  padding: const EdgeInsets.all(9),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: ColorConstants.borderColor,width: 1),
                    boxShadow: const  [
                      BoxShadow(
                        color: Colors.white,
                      ),
                      BoxShadow(
                        color: Colors.white70,
                        spreadRadius: -5.0,
                        blurRadius: 20.0,
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Image.asset(AssetConstant.privateHospital),
                      Text(
                        "Private Visit",
                        style: AppTextTheme.medium.copyWith(fontSize: 10, color: ColorConstants.textLightShade),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Stack(
              alignment: Alignment.bottomRight,
              clipBehavior: Clip.none,
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 20, left: 20),
                  width: Get.width,
                  padding: const EdgeInsets.only(top: 10, left: 20, right: 17, bottom: 6),
                  decoration: const ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(5),
                        bottomLeft: Radius.circular(5),
                        bottomRight: Radius.circular(20),
                      ),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x26F37171),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Picme Visit Private Visit",
                        style: AppTextTheme.medium.copyWith(fontSize: 12, color: ColorConstants.textLightBrown),
                      ),
                      Text(
                        "Facility : PHC | Any C/0 : Nill",
                        style: AppTextTheme.regular.copyWith(fontSize: 10, color: ColorConstants.brownColor),
                      ),
                      Text(
                        "Date of Visit : 06-012-2021",
                        style: AppTextTheme.regular.copyWith(fontSize: 10, color: ColorConstants.brownColor),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: 20,
                  child: Image.asset(
                    AssetConstant.baby1,
                    height: 50,
                    width: 50,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 14),
            /*---------------- Clinic Report ----------*/
            InkWell(
              onTap: (){
                showModalBottomSheet(
                    backgroundColor: ColorConstants.transParent,
                    context: context, builder: (context){
                  return const HealthRecordModelSheetView();
                });
              },
              child: Container(
                padding: const EdgeInsets.only(left: 26, top: 8),
                margin: const EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: ColorConstants.textWhite),
                child: Row(
                  children: [
                    Container(
                      width: 45,
                      height: 45,
                      decoration: const BoxDecoration(image: DecorationImage(image: AssetImage(AssetConstant.clinikReport), fit: BoxFit.cover)),
                    ),
                    const SizedBox(width: 22),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Clinical Report",
                                  style: AppTextTheme.medium.copyWith(fontSize: 18, color: ColorConstants.textLightBrown),
                                ),
                                Stack(
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
                              ],
                            ),
                          ),
                          const SizedBox(height: 10),
                          Row(
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
                              Container(
                                height: 34,
                                width: 2,
                                color: ColorConstants.dividerColor,
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
                              Container(
                                height: 34,
                                width: 2,
                                color: ColorConstants.dividerColor,
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
                              const SizedBox(width: 10),
                            ],
                          ),
                          const SizedBox(height: 5),
                          Container(
                            height: 18,
                            padding: const EdgeInsets.only(left: 12, right: 35),
                            decoration: ShapeDecoration(
                              color: Colors.white.withOpacity(0.4099999964237213),
                              shape: const RoundedRectangleBorder(
                                side: BorderSide(width: 0.50, color: Color(0xFFFFE4E8)),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  bottomRight: Radius.circular(8),
                                ),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(AssetConstant.healthIcon, height: 7),
                                    const SizedBox(width: 3),
                                    Text(
                                      "HFS : 140",
                                      style: AppTextTheme.regular.copyWith(fontSize: 8, color: ColorConstants.textLightShade),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Image.asset(AssetConstant.pedalPresentIcon, height: 10),
                                    const SizedBox(width: 2),
                                    Text(
                                      "Pedal Edema Present : NIL",
                                      style: AppTextTheme.regular.copyWith(fontSize: 8, color: ColorConstants.textLightBlueGrayColor),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            /*---------------- LAB Report ----------*/
            InkWell(
                onTap:(){},
              child: Container(
                padding: const EdgeInsets.only(left: 26, top: 8),
                margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: ColorConstants.textWhite),
                child: Row(
                  children: [
                    Container(
                      width: 45,
                      height: 45,
                      decoration: const BoxDecoration(image: DecorationImage(image: AssetImage(AssetConstant.lab), fit: BoxFit.cover)),
                    ),
                    const SizedBox(width: 22),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Lab Report",
                                  style: AppTextTheme.medium.copyWith(fontSize: 18, color: ColorConstants.textLightBrown),
                                ),
                                Container(
                                  height: 23,
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(color: ColorConstants.lightYellowColor, borderRadius: BorderRadius.circular(15)),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(AssetConstant.hbIcon, height: 10),
                                      const SizedBox(width: 2),
                                      Text(
                                        "HB 10 G %",
                                        style: AppTextTheme.regular.copyWith(
                                          fontSize: 10,
                                          color: ColorConstants.textLightBrown,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 10),
                          Row(
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
                                          " FBS",
                                          style: AppTextTheme.regular.copyWith(fontSize: 14, color: ColorConstants.textLightBrown),
                                        )
                                      ],
                                    ),
                                    const SizedBox(height: 5),
                                    Text(
                                      "90",
                                      style: AppTextTheme.bold.copyWith(
                                        fontSize: 10,
                                        color: ColorConstants.textLightShade,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: 34,
                                width: 2,
                                color: ColorConstants.dividerColor,
                              ),
                              SizedBox(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset(
                                          AssetConstant.ppbsIcon,
                                          height: 14,
                                        ),
                                        Text(
                                          " PPBS",
                                          style: AppTextTheme.regular.copyWith(fontSize: 14, color: ColorConstants.textLightBrown),
                                        )
                                      ],
                                    ),
                                    const SizedBox(height: 5),
                                    Text(
                                      "86 mg/dl",
                                      style: AppTextTheme.bold.copyWith(
                                        fontSize: 10,
                                        color: ColorConstants.textLightShade,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: 34,
                                width: 2,
                                color: ColorConstants.dividerColor,
                              ),
                              SizedBox(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset(
                                          AssetConstant.gctIcon,
                                          height: 14,
                                        ),
                                        Text(
                                          " GCT",
                                          style: AppTextTheme.regular.copyWith(fontSize: 14, color: ColorConstants.textLightBrown),
                                        )
                                      ],
                                    ),
                                    const SizedBox(height: 5),
                                    Text(
                                      "120mg/dl",
                                      style: AppTextTheme.bold.copyWith(
                                        fontSize: 10,
                                        color: ColorConstants.textLightShade,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 10),
                            ],
                          ),
                          const SizedBox(height: 5),
                          Container(
                            height: 18,
                            padding: const EdgeInsets.only(left: 12, right: 35),
                            decoration: ShapeDecoration(
                              color: Colors.white.withOpacity(0.4099999964237213),
                              shape: const RoundedRectangleBorder(
                                side: BorderSide(width: 0.50, color: Color(0xFFFFE4E8)),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  bottomRight: Radius.circular(8),
                                ),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(AssetConstant.sugerIcon, height: 7),
                                    const SizedBox(width: 3),
                                    Text(
                                      "Sugar : NR",
                                      style: AppTextTheme.regular.copyWith(fontSize: 8, color: ColorConstants.textLightShade),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Image.asset(AssetConstant.urineIcon, height: 10),
                                    const SizedBox(width: 2),
                                    Text(
                                      "Urine Albumin :NR",
                                      style: AppTextTheme.regular.copyWith(fontSize: 8, color: ColorConstants.textLightBlueGrayColor),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            /*--------------- USG  Report -----------*/
            InkWell(
              onTap: (){},
              child: Container(
                padding: const EdgeInsets.only(left: 26, top: 8),
                margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: ColorConstants.textWhite),
                child: Row(
                  children: [
                    Container(
                      width: 45,
                      height: 45,
                      decoration: const BoxDecoration(image: DecorationImage(image: AssetImage(AssetConstant.usgReport), fit: BoxFit.cover)),
                    ),
                    const SizedBox(width: 22),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "USG Report",
                                  style: AppTextTheme.medium.copyWith(fontSize: 18, color: ColorConstants.textLightBrown),
                                ),
                                Container(
                                  height: 23,
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(color: ColorConstants.lightYellowColor, borderRadius: BorderRadius.circular(15)),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(AssetConstant.tshIcon, height: 10),
                                      const SizedBox(width: 2),
                                      Text(
                                        "TSH : NR MU/L",
                                        style: AppTextTheme.regular.copyWith(
                                          fontSize: 10,
                                          color: ColorConstants.textLightBrown,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset(
                                          AssetConstant.fetusIcon,
                                          height: 14,
                                        ),
                                        Text(
                                          " Fetus",
                                          style: AppTextTheme.regular.copyWith(fontSize: 14, color: ColorConstants.textLightBrown),
                                        )
                                      ],
                                    ),
                                    const SizedBox(height: 5),
                                    Text(
                                      "Alive  Mg/dl",
                                      style: AppTextTheme.bold.copyWith(
                                        fontSize: 10,
                                        color: ColorConstants.textLightShade,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: 34,
                                width: 2,
                                color: ColorConstants.dividerColor,
                              ),
                              SizedBox(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset(
                                          AssetConstant.placentaIcon,
                                          height: 14,
                                        ),
                                        Text(
                                          " Placenta",
                                          style: AppTextTheme.regular.copyWith(fontSize: 14, color: ColorConstants.textLightBrown),
                                        )
                                      ],
                                    ),
                                    const SizedBox(height: 5),
                                    Text(
                                      "86 mg/dl",
                                      style: AppTextTheme.bold.copyWith(
                                        fontSize: 10,
                                        color: ColorConstants.textLightShade,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: 34,
                                width: 2,
                                color: ColorConstants.dividerColor,
                              ),
                              SizedBox(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset(
                                          AssetConstant.liquorIcon,
                                          height: 14,
                                        ),
                                        Text(
                                          " Liquor",
                                          style: AppTextTheme.regular.copyWith(fontSize: 14, color: ColorConstants.textLightBrown),
                                        )
                                      ],
                                    ),
                                    const SizedBox(height: 5),
                                    Text(
                                      "Normal",
                                      style: AppTextTheme.bold.copyWith(
                                        fontSize: 10,
                                        color: ColorConstants.textLightShade,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 10),
                            ],
                          ),
                          const SizedBox(height: 5),
                          Container(
                            height: 18,
                            padding: const EdgeInsets.only(left: 12, right: 35),
                            decoration: ShapeDecoration(
                              color: Colors.white.withOpacity(0.4099999964237213),
                              shape: const RoundedRectangleBorder(
                                side: BorderSide(width: 0.50, color: Color(0xFFFFE4E8)),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  bottomRight: Radius.circular(8),
                                ),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(AssetConstant.gestationIcon, height: 7),
                                    const SizedBox(width: 3),
                                    Text(
                                      "Gestation Sac : Single",
                                      style: AppTextTheme.regular.copyWith(fontSize: 8, color: ColorConstants.textLightShade),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
