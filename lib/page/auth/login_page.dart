import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thaimai/constant/asset_constant.dart';
import 'package:thaimai/constant/color_constant.dart';
import 'package:thaimai/page/auth/forgot_picme_id_bottom_sheet.dart';
import 'package:thaimai/page/bottom_navigation_bar.dart';
import 'package:thaimai/project_specific/button_widget.dart';
import 'package:thaimai/project_specific/text_theme.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _iDTextEditingController = TextEditingController();
  final _passwordTextEditingController = TextEditingController();
  bool _isPasswordShow = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage(AssetConstant.loginBg), fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            const SizedBox(height: 127),
            Text(
              "Welcome to Thaimai",
              style: AppTextTheme.medium.copyWith(fontSize: 24, color: ColorConstants.textBlackColor),
            ),
            const SizedBox(height: 10),
            Text(
              "You can search course, apply course and find \n scholarship for abroad studies",
              style: AppTextTheme.regular.copyWith(fontSize: 14, color: ColorConstants.textLightShade),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 136),
            Container(
              height: 54,
              margin: const EdgeInsets.only(left: 20, right: 20),
              padding: const EdgeInsets.only(left: 25),
              width: Get.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: ColorConstants.textLightShade, width: 1),
              ),
              child: Center(
                child: TextField(
                  controller: _iDTextEditingController,
                  decoration: const InputDecoration(hintText: "PICME ID", border: InputBorder.none, suffixIcon: Icon(CupertinoIcons.checkmark_alt)),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: 54,
              margin: const EdgeInsets.only(left: 20, right: 20),
              padding: const EdgeInsets.only(left: 25),
              width: Get.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: ColorConstants.textLightShade, width: 1),
              ),
              child: Center(
                child: TextField(
                  obscureText: _isPasswordShow,
                  obscuringCharacter: '●',
                  controller: _passwordTextEditingController,
                  decoration: InputDecoration(
                      hintText: "●●●●●●●●●",
                      border: InputBorder.none,
                      suffixIcon: InkWell(
                          onTap: () {
                            setState(() {
                              _isPasswordShow = !_isPasswordShow;
                            });
                          },
                          child: !_isPasswordShow ? const Icon(CupertinoIcons.eye) : const Icon(CupertinoIcons.eye_slash))),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                  child: Text("Forgot PICME?", style: AppTextTheme.medium.copyWith(fontSize: 14, color: ColorConstants.textBlackColor)),
                  onPressed: () {
                    showModalBottomSheet(
                        backgroundColor: Colors.transparent,
                        isDismissible: false,
                        isScrollControlled: true,
                        context: context,
                        builder: (context) {
                          return SingleChildScrollView(
                            padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                            child: Container(
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    topRight: Radius.circular(30),
                                  ),
                                  color: ColorConstants.textWhite,
                                ),
                                child: const ForGotPICMEIDSheet()),
                          );
                        });
                  }),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: CircleRadiusButton(
                buttonTitle: "Login",
                onPressed: () {
                  Get.to(()=>const BottomNavigationBarPage());
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
