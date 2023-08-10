import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thaimai/constant/asset_constant.dart';
import 'package:thaimai/constant/color_constant.dart';
import 'package:thaimai/project_specific/text_theme.dart';

class DeliveryDetailsPage extends StatefulWidget {
  const DeliveryDetailsPage({super.key});

  @override
  State<DeliveryDetailsPage> createState() => _DeliveryDetailsPageState();
}

class _DeliveryDetailsPageState extends State<DeliveryDetailsPage> {
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
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 37, bottom: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
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
                        "Delivery Details",
                        style: AppTextTheme.medium.copyWith(fontSize: 18, color: ColorConstants.textLightBrown),
                      )
                    ],
                  ),
                  Image.asset(
                    AssetConstant.searchIcon,
                    width: 18,
                    height: 18,
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 20, left: 20),
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                shadows: const [
                  BoxShadow(
                    color: Color(0x14000000),
                    blurRadius: 20,
                    offset: Offset(0, 0),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Column(
                children: [
                  const SizedBox(height: 25),
                  Stack(
                    children: [
                      Row(
                        children: [
                          const SizedBox(
                            width: 100,
                            height: 100,
                          ),
                          const SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Infant ID: 1162727181818",
                                style: AppTextTheme.medium.copyWith(fontSize: 15, color: ColorConstants.textLightBrown),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                "Birth Type : Term",
                                style: AppTextTheme.light.copyWith(fontSize: 14, color: ColorConstants.textLightShade),
                              ),
                              const SizedBox(height: 8),
                              Row(
                                children: [
                                  Image.asset(
                                    AssetConstant.locationIcon,
                                    height: 12,
                                    width: 12,
                                  ),
                                  Text(
                                    "Place : HSC",
                                    style: AppTextTheme.light.copyWith(fontSize: 14, color: ColorConstants.textLightShade),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      Positioned(
                        right: 28,
                        top: 35,
                        child: Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(shape: BoxShape.circle, color: ColorConstants.greenColorData.withAlpha(8)),
                          child: Center(
                            child: Text(
                              "12:00 \nAM",
                              textAlign: TextAlign.center,
                              style: AppTextTheme.regular.copyWith(fontSize: 13, color: ColorConstants.greenColorData),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 15),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      width: 102,
                      height: 32,
                      decoration: const ShapeDecoration(
                        color: ColorConstants.buttonColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomRight: Radius.circular(10),
                          ),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(AssetConstant.calenderIcon, height: 15, width: 15),
                          const SizedBox(width: 4),
                          Text(
                            "20-12-2021",
                            style: AppTextTheme.medium.copyWith(fontSize: 12, color: ColorConstants.textWhite),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 30),
            Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.only(right: 20, left: 20),
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                shadows: const [
                  BoxShadow(
                    color: Color(0x14000000),
                    blurRadius: 20,
                    offset: Offset(0, 0),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: ColorConstants.containerGrayLightColor.withOpacity(0.12),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Image.asset(AssetConstant.bitIcon),
                            Text(
                              "Alive",
                              style: AppTextTheme.medium.copyWith(fontSize: 12, color: ColorConstants.greenColorData),
                            )
                          ],
                        ),
                        Text(
                          "Mother",
                          style: AppTextTheme.medium.copyWith(fontSize: 14, color: ColorConstants.textLightBrownColor),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: ColorConstants.containerGrayLightColor.withOpacity(0.12),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Image.asset(AssetConstant.bitIcon),
                            Text(
                              "Alive",
                              style: AppTextTheme.medium.copyWith(fontSize: 12, color: ColorConstants.greenColorData),
                            )
                          ],
                        ),
                        Text(
                          "New Born",
                          style: AppTextTheme.medium.copyWith(fontSize: 14, color: ColorConstants.textLightBrownColor),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: ColorConstants.containerGrayLightColor.withOpacity(0.12),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Text(
                          "Normal Vaginal \n Delivery",
                          textAlign: TextAlign.center,
                          style: AppTextTheme.medium.copyWith(fontSize: 9, color: ColorConstants.redColor),
                        ),
                        Text(
                          "Type",
                          style: AppTextTheme.medium.copyWith(fontSize: 14, color: ColorConstants.textLightBrownColor),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 52),
            Container(
              padding: const EdgeInsets.all(10),
              width: Get.width,
              margin: const EdgeInsets.only(right: 20, left: 20),
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                shadows: const [
                  BoxShadow(
                    color: Color(0x14000000),
                    blurRadius: 20,
                    offset: Offset(0, 0),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                children: [
                  Column(
                    children: [
                      const SizedBox(height: 50),
                      Text(
                        "Infrant Details",
                        style: AppTextTheme.medium.copyWith(fontSize: 18, color: ColorConstants.textLightBrown),
                      ),
                      const SizedBox(height: 12),
                      Container(
                        height: 3,
                        width: 130,
                        decoration: BoxDecoration(
                          color: ColorConstants.containerGrayColor,
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                      const SizedBox(height: 17),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      AssetConstant.weightScaleIcon,
                                      height: 14,
                                    ),
                                    Text(
                                      " Weight (Gms)",
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      AssetConstant.heightIcon,
                                      height: 14,
                                    ),
                                    Text(
                                      " Height",
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
                      const SizedBox(height: 26),
                    ],
                  ),
                  Positioned(
                    top: -45,
                    child: Image.asset(
                      AssetConstant.detailImage,
                      height: 80,
                      width: 80,
                    ),
                  ),
                  Positioned(
                      bottom: -30,
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: ColorConstants.yellowLightColor,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          children: [
                            Image.asset(AssetConstant.healthIcon),
                            const SizedBox(width: 7),
                            Text(
                              "Breast Fedding Given :",
                              style: AppTextTheme.regular.copyWith(fontSize: 14, color: ColorConstants.textLightBrown),
                            ),
                            const SizedBox(width: 3),
                            Container(
                              width: 47,
                              height: 23,
                              decoration: ShapeDecoration(
                                color: const Color(0xFFB8F5BA),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                              child: Center(
                                  child: Text(
                                "Yes",
                                style: AppTextTheme.regular.copyWith(color: ColorConstants.greenColorData, fontSize: 14),
                              )),
                            )
                          ],
                        ),
                      )),
                ],
              ),
            ),
            const SizedBox(height: 50),

            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [

                Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.only(right: 20, left: 20),
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    shadows: const [
                      BoxShadow(
                        color: Color(0x14000000),
                        blurRadius: 20,
                        offset: Offset(0, 0),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 13),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color: ColorConstants.containerGrayLightColor.withOpacity(0.12),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: [
                                Text(
                                  "20-12-2021",
                                  style: AppTextTheme.medium.copyWith(fontSize: 9, color: ColorConstants.redColor),
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  "BCG \n Given Date",
                                  textAlign: TextAlign.center,
                                  style: AppTextTheme.medium.copyWith(fontSize: 14, color: ColorConstants.textLightBrownColor),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color: ColorConstants.containerGrayLightColor.withOpacity(0.12),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: [
                                Text(
                                  "20-12-2021",
                                  style: AppTextTheme.medium.copyWith(fontSize: 9, color: ColorConstants.redColor),
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  "OPV \n Given Date",
                                  textAlign: TextAlign.center,
                                  style: AppTextTheme.medium.copyWith(fontSize: 14, color: ColorConstants.textLightBrownColor),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color: ColorConstants.containerGrayLightColor.withOpacity(0.12),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: [
                                Text(
                                  "20-12-2021",
                                  style: AppTextTheme.medium.copyWith(fontSize: 9, color: ColorConstants.redColor),
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  "HEP B \n Given Date",
                                  textAlign: TextAlign.center,
                                  style: AppTextTheme.medium.copyWith(fontSize: 14, color: ColorConstants.textLightBrownColor),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: -15,
                  child: Container(
                    width: 108,
                    height: 27,
                    padding: EdgeInsets.all(5),
                    decoration: ShapeDecoration(
                      color: const Color(0xFF677294),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          AssetConstant.calenderIcon,
                          height: 15,
                          width: 15,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          "Zero Dose",
                          style: AppTextTheme.regular.copyWith(fontSize: 14, color: ColorConstants.textWhite),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
