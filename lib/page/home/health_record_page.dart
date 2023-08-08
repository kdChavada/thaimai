import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thaimai/constant/asset_constant.dart';
import 'package:thaimai/constant/color_constant.dart';
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
                  decoration: BoxDecoration(
                    boxShadow: [
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
                ),
                Container(
                  width: 103.64,
                  height: 34.98,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 0.50, color: Color(0xFFD8E5FD)),
                      borderRadius: BorderRadius.circular(12),
                    ),
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
          ],
        ),
      ),
    );
  }
}
