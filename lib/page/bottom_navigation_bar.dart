import 'package:flutter/material.dart';
import 'package:thaimai/constant/asset_constant.dart';
import 'package:thaimai/constant/color_constant.dart';
import 'package:thaimai/page/home/home_tab_page.dart';

class BottomNavigationBarPage extends StatefulWidget {
  const BottomNavigationBarPage({super.key});

  @override
  State<BottomNavigationBarPage> createState() => _BottomNavigationBarPageState();
}

class _BottomNavigationBarPageState extends State<BottomNavigationBarPage> {
  int selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: const HomeTabPage(),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(left: 15, right: 15),
        height: 70,
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(18),
              topRight: Radius.circular(18),
            )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  selectIndex = 0;
                });
              },
              child: Image.asset(
                AssetConstant.homeIcon,
                height: 30,
                color: selectIndex == 0 ? ColorConstants.buttonColor : ColorConstants.textLightShade.withOpacity(0.90),
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  selectIndex = 1;
                });
              },
              child: Image.asset(
                AssetConstant.likeIcon,
                height: 30,
                color: selectIndex == 1 ? ColorConstants.buttonColor : ColorConstants.textLightShade.withOpacity(0.90),
              ),
            ),
            Image.asset(
              AssetConstant.sosIcon,
              height: 50,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  selectIndex = 2;
                });
              },
              child: Image.asset(
                AssetConstant.bookIcon,
                height: 30,
                color: selectIndex == 2 ? ColorConstants.buttonColor : ColorConstants.textLightShade.withOpacity(0.90),
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  selectIndex = 3;
                });
              },
              child: Image.asset(
                AssetConstant.chatIcon,
                height: 30,
                color: selectIndex == 3 ? ColorConstants.buttonColor : ColorConstants.textLightShade.withOpacity(0.90),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
