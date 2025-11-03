import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kcfs_website/common/styles/colors.dart';


class SchoolView extends StatelessWidget {
  const SchoolView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double maxmumWidth=MediaQuery.of(context).size.width*0.80;
    return Container(
      height: 550,
      width: double.infinity,
      // width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.only(right: 70, left: 70, top: 70, bottom: 70),
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage("assets/images/schoolImage.png"))),
      child: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: maxmumWidth),
          // width: 1100,
          child: Column(
            children: [
              AutoSizeText(
                "Shaping the Future Through  Education and Innovation",
                style: GoogleFonts.belanosima(
                    fontSize: 80, color: AppColors.primaryColor),
                maxLines: 3,
                minFontSize: 20,
                stepGranularity: 5,
              ),
              const SizedBox(
                height: 15,
              ),
              AutoSizeText(
                "By combining tradition with modern innovation, we empower students with the skills, values, and mindset to excel in an ever-evolving global community.",
                style: GoogleFonts.belanosima(
                    fontSize: 20, color: AppColors.backgroundColor),
                maxLines: 2,
                minFontSize: 12,
                stepGranularity: 4,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

OutlinedButton kElevetedButton(String text,
    {double? textSize,
    Color? backgroundcolor,
    Color? foregroundcolor,
    final VoidCallback? onTap}) {
  return OutlinedButton(
      style: ElevatedButton.styleFrom(
          side: BorderSide.none,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          textStyle: GoogleFonts.poppins(fontSize: textSize ?? 15),
          foregroundColor: foregroundcolor ?? AppColors.whiteColor,
          backgroundColor: backgroundcolor ?? AppColors.primaryColor),
      onPressed: onTap,
      child: Text(text));
}

OutlinedButton kTransparentelevetedButton(String text, final VoidCallback onTap,
    {Color? backgroundcolor, double? textSize, Color? foregroundcolor}) {
  return OutlinedButton(
      style: ElevatedButton.styleFrom(
          side: const BorderSide(color: AppColors.primaryColor),
          padding:
              EdgeInsets.symmetric(horizontal: textSize ?? 20, vertical: 10),
          textStyle:
              GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w500),
          foregroundColor: foregroundcolor ?? AppColors.primaryColor,
          backgroundColor: backgroundcolor ?? Colors.transparent),
      onPressed: onTap,
      child: Text(text));
}
