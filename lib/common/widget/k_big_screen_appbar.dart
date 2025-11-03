import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kcfs_website/common/config/app_route_constants.dart';
import 'package:kcfs_website/common/styles/colors.dart';
import 'package:kcfs_website/common/widget/text_style.dart';
import 'package:kcfs_website/main.dart';

PreferredSizeWidget appCustomBar(BuildContext context) {
  return AppBar(
    toolbarHeight: 60,
    elevation: 7,
    backgroundColor: const Color.fromARGB(0, 0, 0, 12),
    leading: Padding(
      padding: const EdgeInsets.only(left: 30),
      child: Row(
        children: [
          Image.asset("assets/images/schoollogo.png"),
          const SizedBox(
            width: 38,
          ),
          const KText(
            color: AppColors.primaryColor,
            text: "Keland Care\nFoundation School",
            fontSize: 18,
          ),
        ],
      ),
    ),
    leadingWidth: 360,
    actions: [
      kTextButton("Home", textSize: 16, textColor: AppColors.primaryColor,
          onTap: () {
        context.go(RouteConstants.homePage);
      }),
      const SizedBox(
        width: 28,
      ),
      kTextButton("Admision", textSize: 16, textColor: AppColors.primaryColor),
      const SizedBox(
        width: 28,
      ),
      kTextButton("Accademics",
          textSize: 16, textColor: AppColors.primaryColor),
      const SizedBox(
        width: 28,
      ),
      kTextButton("About us", textSize: 16, textColor: AppColors.primaryColor),
      const SizedBox(
        width: 28,
      ),
      // kElevetedButton(
      //   "Login",
      //   textSize: 12,
      // ),
      InkWell(
        onTap: () {
          // context.go(RouteConstants.portal);
        },
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 6),
          decoration: BoxDecoration(color: AppColors.primaryColor,borderRadius: BorderRadius.circular(12)),
          child: const Text(
            "KCFS Portal",
            style: TextStyle(
                color: AppColors.whiteColor,
                fontSize: 12,
                fontStyle: FontStyle.italic),
          ),
        ),
      ),
      const SizedBox(
        width: 30,
      )
    ],
  );
}

class TextButtonWidget extends StatelessWidget {
  final String tite;
  final VoidCallback onPress;
  const TextButtonWidget({
    super.key,
    required this.tite,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: TextButton.styleFrom(foregroundColor: AppColors.whiteColor),
        onPressed: onPress,
        child: Text(tite,
            style: GoogleFonts.poppins(
                fontSize: 18, fontWeight: FontWeight.w300)));
  }
}
