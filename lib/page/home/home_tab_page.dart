import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thaimai/constant/asset_constant.dart';
import 'package:thaimai/constant/color_constant.dart';
import 'package:thaimai/page/home/health_record_page.dart';
import 'package:thaimai/page/primary_register/location_service_page.dart';
import 'package:thaimai/project_specific/text_theme.dart';

import '../../main.dart';

class HomeTabPage extends StatefulWidget {
  const HomeTabPage({super.key});

  @override
  State<HomeTabPage> createState() => _HomeTabPageState();
}

class _HomeTabPageState extends State<HomeTabPage> {
  void _openDrawer() {
    scaffoldKey.currentState!.openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
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
                  height: 186,
                  padding: const EdgeInsets.only(right: 20, left: 20, top: 40),
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hi username",
                            style: AppTextTheme.light.copyWith(fontSize: 20, color: ColorConstants.textWhite),
                          ),
                          const SizedBox(height: 6),
                          Text(
                            "PICME ID : 133000434712",
                            style: AppTextTheme.bold.copyWith(fontSize: 16, color: ColorConstants.textWhite),
                          ),
                          const SizedBox(height: 6),
                          Text(
                            "EDD DATE :  06 -07-2022",
                            style: AppTextTheme.regular.copyWith(fontSize: 14, color: ColorConstants.textWhite),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          InkWell(
                            onTap: () {
                              _openDrawer();
                            },
                            child: Container(
                              height: 60,
                              width: 60,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://images.unsplash.com/photo-1519085360753-af0119f7cbe7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=687&q=80"),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            "Age 35",
                            style: AppTextTheme.medium.copyWith(fontSize: 13, color: ColorConstants.textWhite),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: 156,
                  right: 20,
                  left: 20,
                  child: Container(
                    padding: const EdgeInsets.only(left: 22, right: 17),
                    height: 54,
                    decoration: BoxDecoration(color: ColorConstants.textWhite, borderRadius: BorderRadius.circular(6)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Before Delivery",
                          style: AppTextTheme.bold.copyWith(fontSize: 15, color: ColorConstants.textLightShade),
                        ),
                        Container(
                          height: 23,
                          width: 65,
                          decoration: BoxDecoration(color: ColorConstants.lightGreenColor, borderRadius: BorderRadius.circular(15)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(AssetConstant.bitIcon),
                              const SizedBox(width: 2),
                              Text(
                                "High",
                                style: AppTextTheme.regular.copyWith(
                                  fontSize: 10,
                                  color: ColorConstants.greenColor,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 35),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                        "80 mm",
                        style: AppTextTheme.bold.copyWith(
                          fontSize: 14,
                          color: ColorConstants.textLightBrown,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 146,
                    width: 146,
                    decoration: const BoxDecoration(image: DecorationImage(image: AssetImage(AssetConstant.babyCircle))),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Weight ",
                            style: AppTextTheme.regular.copyWith(fontSize: 14, color: ColorConstants.textLightBrown),
                          ),
                          Image.asset(
                            AssetConstant.weightScaleIcon,
                            height: 14,
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Text(
                        "65kg",
                        style: AppTextTheme.bold.copyWith(
                          fontSize: 14,
                          color: ColorConstants.textLightBrown,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Text(
              "Gest Age - 21 Weeks",
              style: AppTextTheme.medium.copyWith(fontSize: 18, color: ColorConstants.textLightBrown),
            ),
            const SizedBox(height: 11),
            Text(
              "LMD DATE : 06-07-2022",
              style: AppTextTheme.regular.copyWith(fontSize: 14, color: ColorConstants.brownColor),
            ),
            InkWell(
              onTap: () {
                Get.to(() => const HealthRecordPage());
              },
              child: Container(
                margin: const EdgeInsets.only(right: 70, left: 70, top: 24),
                height: 29,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: ColorConstants.blueGrayColor,
                ),
                child: Center(
                  child: Text(
                    "Next Visit  :  AN Visit Closed",
                    style: AppTextTheme.medium.copyWith(fontSize: 15, color: ColorConstants.textWhite),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Emergency Contact",
                    style: AppTextTheme.medium.copyWith(fontSize: 18, color: ColorConstants.textLightBrown),
                  ),
                  Row(
                    children: [
                      Text("See all ", style: AppTextTheme.light.copyWith(fontSize: 12, color: ColorConstants.textLightShade)),
                      Image.asset(AssetConstant.arrowForWord)
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: List.generate(
                      15,
                      growable: false,
                      (index) => Card(
                            clipBehavior: Clip.none,
                            child: Container(
                              margin: const EdgeInsets.only(left: 20),
                              width: 96,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(6), color: ColorConstants.textWhite),
                              child: Column(
                                children: [
                                  const SizedBox(height: 11),
                                  Container(
                                    height: 54,
                                    width: 54,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                "https://images.unsplash.com/photo-1519085360753-af0119f7cbe7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=687&q=80"),
                                            fit: BoxFit.cover)),
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    "Rajesh",
                                    style: AppTextTheme.medium.copyWith(fontSize: 12, color: ColorConstants.textLightBrown),
                                  ),
                                  const SizedBox(height: 2),
                                  Text(
                                    "Husband",
                                    style: AppTextTheme.light.copyWith(fontSize: 8, color: ColorConstants.textLightShade),
                                  ),
                                  const SizedBox(height: 7),
                                  InkWell(
                                    onTap: () {},
                                    child: Image.asset(
                                      AssetConstant.callIcon,
                                      height: 30,
                                    ),
                                  ),
                                  const SizedBox(height: 7),
                                ],
                              ),
                            ),
                          )),
                ),
              ),
            )
          ],
        ),
      ),
      drawer: Drawer(
        child: Container(
          decoration: const BoxDecoration(image: DecorationImage(image: AssetImage(AssetConstant.loginBg), fit: BoxFit.cover)),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 21, right: 15, top: 25, bottom: 95),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://images.unsplash.com/photo-1519085360753-af0119f7cbe7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=687&q=80"),
                                  fit: BoxFit.cover)),
                        ),
                        const SizedBox(width: 12),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Hi Username",
                              style: AppTextTheme.medium.copyWith(fontSize: 16, color: ColorConstants.textLightShade),
                            ),
                            const SizedBox(height: 6),
                            Text(
                              "133009327105",
                              style: AppTextTheme.regular.copyWith(fontSize: 12, color: ColorConstants.textLightShade),
                            ),
                          ],
                        )
                      ],
                    ),
                    InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: Image.asset(
                        AssetConstant.clearIcon,
                        width: 30,
                        height: 30,
                      ),
                    ),
                  ],
                ),
              ),
              drawerListTile(tileName: "Primary Register", imageUrl: AssetConstant.primaryRegisterIcon, onTap: () {
                Get.back();
                Get.to(()=>const LocationServicePage());
              }),
              const SizedBox(height: 10),
              drawerListTile(tileName: "Immunization Status", imageUrl: AssetConstant.immunizationStatusIcon, onTap: () {}),
              const SizedBox(height: 10),
              drawerListTile(tileName: "Visit Entry", imageUrl: AssetConstant.visitEntryIcon, onTap: () {}),
              const SizedBox(height: 10),
              drawerListTile(tileName: "Delivery Entry", imageUrl: AssetConstant.deliveryEntryIcon, onTap: () {}),
              const SizedBox(height: 10),
              drawerListTile(tileName: "PN/HBNC Visit Entry", imageUrl: AssetConstant.pnHBNCIcon, onTap: () {}),
              const SizedBox(height: 10),
              drawerListTile(tileName: "Immunization Entry", imageUrl: AssetConstant.immunizationEntryIcon, onTap: () {}),
              const SizedBox(height: 10),
              drawerListTile(tileName: "Health Tips", imageUrl: AssetConstant.healthTipsIcon, onTap: () {}),
              const SizedBox(height: 10),
              drawerListTile(tileName: "Child Development", imageUrl: AssetConstant.childDevelopmentIcon, onTap: () {}),
              const SizedBox(height: 65),
              InkWell(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      Image.asset(AssetConstant.logoutIcon, width: 20, height: 20),
                      const SizedBox(width: 27),
                      Text(
                        "Logout",
                        style: AppTextTheme.medium.copyWith(fontSize: 20, color: ColorConstants.textLightShade),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget drawerListTile({required String tileName, required String imageUrl, required VoidCallback onTap}) {
    return ListTile(
      onTap: onTap,
      title: Text(
        tileName,
        style: AppTextTheme.regular.copyWith(fontSize: 16, color: ColorConstants.textLightShade),
      ),
      leading: Image.asset(imageUrl, width: 20, height: 20),
      trailing: const Icon(Icons.arrow_forward_ios_rounded, size: 20),
    );
  }
}
