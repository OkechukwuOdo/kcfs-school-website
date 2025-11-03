import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kcfs_website/common/styles/colors.dart';

PreferredSizeWidget ksmallappBar(BuildContext context) {
  return AppBar(
    backgroundColor: AppColors.backgroundColor,
    title: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset("assets/images/schoollogo.png"),
              const SizedBox(
                width: 28,
              ),
              AutoSizeText(
                "Keland Care\nFoundation School",
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  color: AppColors.primaryColor,
                ),
                minFontSize: 10,
              )
            ],
          )
        ],
      ),
    ),
  );
}
