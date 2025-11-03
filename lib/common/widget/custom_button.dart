import 'package:flutter/material.dart';
import 'package:kcfs_website/common/styles/colors.dart';


class CustomButton extends StatelessWidget {
  final double? horizontalPadding;
  final double? verticalPadding;
  final String text;
  final double textSize;
  final double borderRadius;
  const CustomButton({
    super.key,
    this.horizontalPadding,
    this.verticalPadding,
    required this.textSize,
    required this.borderRadius,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: ContinuousRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius)),
            padding: EdgeInsets.symmetric(
                horizontal: horizontalPadding!, vertical: verticalPadding!),
            backgroundColor: AppColors.primaryColor,
            foregroundColor: AppColors.backgroundColor),
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(fontSize: textSize),
        ));
  }
}
