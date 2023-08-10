import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thaimai/constant/asset_constant.dart';
import 'package:thaimai/constant/color_constant.dart';
import 'package:thaimai/page/home/model_sheet/upload_image_model_sheet_view.dart';
import 'package:thaimai/project_specific/text_theme.dart';

class AddRecordsPage extends StatefulWidget {
  const AddRecordsPage({super.key});

  @override
  State<AddRecordsPage> createState() => _AddRecordsPageState();
}

class _AddRecordsPageState extends State<AddRecordsPage> {
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
          crossAxisAlignment: CrossAxisAlignment.start,
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
                    "Add Records",
                    style: AppTextTheme.medium.copyWith(fontSize: 18, color: ColorConstants.textLightBrown),
                  )
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 20, top: 20),
                child: InkWell(
                  onTap: () {
                    showModalBottomSheet(
                        backgroundColor: ColorConstants.transParent,
                        context: context,
                        builder: (context) {
                          return const UploadImageModelSheetView();
                        });
                  },
                  child: Column(
                    children: [
                      Container(
                        height: 125,
                        width: 100,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(6), color: ColorConstants.greenColorData.withOpacity(0.20)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.add,
                              size: 50,
                              color: ColorConstants.greenColor,
                            ),
                            Text(
                              "Add more images",
                              textAlign: TextAlign.center,
                              style: AppTextTheme.regular.copyWith(fontSize: 16, color: ColorConstants.greenColor),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
