import 'package:flutter/material.dart';
import 'package:thaimai/constant/color_constant.dart';
import 'package:thaimai/project_specific/text_theme.dart';

class CircleRadiusButton extends StatefulWidget {
  final String buttonTitle;
  final VoidCallback? onPressed;
  final Color? color;

  const CircleRadiusButton({super.key, required this.buttonTitle, this.onPressed, this.color = ColorConstants.buttonColor});

  @override
  State<CircleRadiusButton> createState() => _CircleRadiusButtonState();
}

class _CircleRadiusButtonState extends State<CircleRadiusButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onPressed,
      child: Container(
        height: 54,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: widget.color,
        ),
        child: Center(
          child: Text(widget.buttonTitle,
              style: AppTextTheme.medium.copyWith(
                fontSize: 18,
                color: ColorConstants.textWhite,
              )),
        ),
      ),
    );
  }
}
