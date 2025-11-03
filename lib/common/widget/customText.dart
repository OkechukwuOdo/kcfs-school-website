import 'package:flutter/material.dart';
import 'package:kcfs_website/common/styles/colors.dart';


class Customtext extends StatelessWidget {
  final String text;
  final double? size;
  final Color? color;
  final TextOverflow? overflow;
  final int? maxLines;
  const Customtext({super.key, required this.text, this.size, this.color,this.overflow,this.maxLines});

  @override
  Widget build(BuildContext context) {
    return Text(
      maxLines: maxLines,
      overflow: overflow,
      text,
      style:
          TextStyle(color: color ?? AppColors.blackColor, fontSize: size ?? 16),
    );
  }
}
