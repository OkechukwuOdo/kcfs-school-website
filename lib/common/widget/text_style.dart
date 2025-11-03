import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kcfs_website/common/styles/colors.dart';

class KText extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight? fontWeight;
  final Color? color;

  const KText(
      {super.key,
      required this.text,
      required this.fontSize,
      this.color,
      this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        fontSize: fontSize,
        fontWeight: fontWeight ?? FontWeight.w400,
        color: color,
      ),
    );
  }
}

Text kBelanosimaText({
  Color? color,
  required final String text,
  required final double size,
}) {
  return Text(
    text,
    style: GoogleFonts.belanosima(
        fontSize: size, color: color ?? AppColors.primaryColor),
  );
}
