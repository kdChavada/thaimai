import 'package:flutter/material.dart';
import 'package:thaimai/constant/asset_constant.dart';
import 'package:thaimai/constant/color_constant.dart';
import 'package:thaimai/project_specific/text_theme.dart';

class UploadImageModelSheetView extends StatelessWidget {
  const UploadImageModelSheetView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: ColorConstants.textWhite,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.only(top: 20, bottom: 30),
              width: 130,
              height: 5,
              decoration: BoxDecoration(
                color: ColorConstants.containerGrayColor,
                borderRadius: BorderRadius.circular(6),
              ),
            ),
            const SizedBox(height: 30),
            rowWidget(imageUrl: AssetConstant.cameraIcon, nameofTitle: "Take a photo", onPress: () {}),
            const SizedBox(height: 20),
            rowWidget(imageUrl: AssetConstant.galleryIcon, nameofTitle: "Upload from gallery", onPress: () {}),
            const SizedBox(height: 20),
            rowWidget(imageUrl: AssetConstant.pdfIcon, nameofTitle: "Upload files", onPress: () {}),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }

  Widget rowWidget({required String imageUrl, required String nameofTitle, required VoidCallback onPress}) {
    return InkWell(
      onTap: onPress,
      child: Row(
        children: [
          Image.asset(imageUrl, height: 15, width: 15),
          const SizedBox(width: 13),
          Text(
            nameofTitle,
            style: AppTextTheme.regular.copyWith(fontSize: 16, color: ColorConstants.textLightShade),
          )
        ],
      ),
    );
  }
}
