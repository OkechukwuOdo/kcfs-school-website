import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kcfs_website/common/config/app_route_constants.dart';
import 'package:kcfs_website/common/config/get_it.dart';
import 'package:kcfs_website/common/config/route.dart';
import 'package:kcfs_website/common/responsive_helper.dart';
import 'package:kcfs_website/common/styles/colors.dart';
import 'package:kcfs_website/features/home/view/home_page.dart';
import 'package:kcfs_website/features/home/view/smal_screen_homepage.dart';
import 'package:kcfs_website/features/home/view/widgets/top_image.dart';

void main() {
   setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'School Management System',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        dataTableTheme: const DataTableThemeData(
            dataRowColor: WidgetStatePropertyAll(AppColors.backgroundColor)),
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
        // textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
        scaffoldBackgroundColor: AppColors.backgroundColor,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerConfig: AppRouter.router,
  
    );
  }
}

class ResponsiveHomePage extends StatelessWidget {
  const ResponsiveHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenSize.isMobile(context)
        ? const SmalScreenHomepage()
        : ScreenSize.isTablet(context)
            ? const BigScreenHomePage()
            : const BigScreenHomePage();
  }
}

GestureDetector kTextButton(String label,
        {double? textSize, Color? textColor, final VoidCallback? onTap}) =>
    GestureDetector(
        onTap: onTap,
        child: Text(
          label,
          style: GoogleFonts.poppins(
              fontSize: textSize ?? 16,
              color: textColor ?? AppColors.whiteColor),
        ));

kDrawer(BuildContext context) => Drawer(
      backgroundColor: AppColors.primaryColor,
      width: 250,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          // padding: EdgeInsets.symmetric(horizontal: 50, vertical: 50),
          children: [
            GestureDetector(
                onTap: () {
                  context.pop();
                },
                child: const Icon(Icons.cancel)),
            const SizedBox(
              height: 36,
            ),
            kTextButton("Home", onTap: () {
              context.go(RouteConstants.homePage);
            }),
            const SizedBox(
              height: 16,
            ),
            const Divider(),
            const SizedBox(
              height: 12,
            ),
            kTextButton("About Us"),
            const Divider(),
            const SizedBox(
              height: 12,
            ),
            const SizedBox(
              height: 24,
            ),
            kTextButton("Adminsion"),
            const Divider(),
            const SizedBox(
              height: 12,
            ),
            const SizedBox(
              height: 24,
            ),
            kTextButton("Accademics"),
            const Divider(),
            const SizedBox(
              height: 12,
            ),
            const Spacer(),
            kElevetedButton("Login",
                textSize: 10,
                backgroundcolor: AppColors.whiteColor,
                foregroundcolor: AppColors.primaryColor)
          ],
        ),
      ),
    );

    kOutlineButton(
    {String? title,
    Color? backgroundColor,
    Color? forgroundColor,
    Color? borderColor,
    Widget? icon,
    required final VoidCallback onTap}) {
  return OutlinedButton(
      style: OutlinedButton.styleFrom(
          textStyle: const TextStyle(fontSize: 14),
          side: BorderSide(color: borderColor ?? Colors.transparent),
          // shape: ContinuousRectangleBorder(
          //     borderRadius: BorderRadius.circular(90)),
          backgroundColor: backgroundColor ?? AppColors.primaryColor,
          foregroundColor: forgroundColor ?? AppColors.whiteColor,
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20)),
      onPressed: onTap,
      child:icon?? Text(
        title ?? "",
        style: const TextStyle(fontSize: 16),
      ));
}
class InputTextWidget extends StatelessWidget {
  final TextEditingController? controller;
  final String titleText;
  const InputTextWidget({
    super.key,
    required this.titleText,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(titleText,
            style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: AppColors.blackColor)),
        const SizedBox(
          height: 12,
        ),
        SizedBox(
          height: 50,
          child: TextFormField(
            controller: controller,
            decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 18, horizontal: 20),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(color: AppColors.blackColor),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(color: AppColors.blackColor),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(color: AppColors.blackColor),
              ),
            ),
          ),
        ),
      ],
    );
  }
}