import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kcfs_website/common/config/app_route_constants.dart';
import 'package:kcfs_website/common/styles/colors.dart';
import 'package:kcfs_website/common/widget/text_style.dart';
import 'package:kcfs_website/features/home/view/widgets/top_image.dart';


class SchoolOverView extends StatelessWidget {
  final BoxConstraints constraints;
  const SchoolOverView({
    super.key,
    required this.constraints,
  });

  @override
  Widget build(BuildContext context) {
    return constraints.maxWidth < 600
        ? schoolOverViewOnSmallScreen(context)
        : SizedBox(
            // height: 853,
            // color: AppColors.primaryColor,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 681,
                      child: kBelanosimaText(
                          text: "KCFS Commitment to Academic Excellence",
                          size: 40
                          // color: AppColors.primaryColor,
                          ),
                    ),
                    SizedBox(
                      width: 551,
                      child: RichText(
                        text: TextSpan(
                            text: "Mission: ",
                            style: GoogleFonts.poppins(
                                color: AppColors.primaryColor,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                            children: [
                              TextSpan(
                                  style: GoogleFonts.poppins(
                                      color: AppColors.blackColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                  text:
                                      " Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean tristique, tortor nec consequat vulputate.")
                            ]),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Container(
                        height: 651,
                        // width: 730,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                              filterQuality: FilterQuality.low,
                              fit: BoxFit.fill,
                              image: AssetImage("assets/images/newsfeed.png")),
                          // image: DecorationImage(image: Image.asset("name")),
                          borderRadius: BorderRadius.circular(32),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 55,
                    ),
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          SizedBox(
                            width: 433,
                            child: RichText(
                              text: TextSpan(
                                  text: "Vission :  ",
                                  style: GoogleFonts.poppins(
                                      color: AppColors.primaryColor,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                  children: [
                                    TextSpan(
                                        style: GoogleFonts.poppins(
                                            color: AppColors.blackColor,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400),
                                        text:
                                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean tristique, tortor nec consequat vulputate.")
                                  ]),
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Container(
                            height: 422,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              image: const DecorationImage(
                                  filterQuality: FilterQuality.low,
                                  fit: BoxFit.fill,
                                  image: AssetImage(
                                      "assets/images/school_block.png")),
                              borderRadius: BorderRadius.circular(32),
                            ),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          const Icon(
                            Icons.keyboard_double_arrow_down_outlined,
                            color: AppColors.primaryColor,
                          ),
                          const SizedBox(
                            height: 26,
                          ),
                          kTransparentelevetedButton("Read more About us", () {
                            context.go(RouteConstants.aboutUs);
                          }, textSize: 16)
                        ],
                      ),
                    ),
                    // const SizedBox(
                    //   width: 186,
                    // )
                  ],
                )
              ],
            ),
          );
  }
}

Column schoolOverViewOnSmallScreen(BuildContext context) => Column(
      children: [
        SizedBox(
          width: 681,
          child: kBelanosimaText(
              text: "EMST Commitment to Academic Excellence", size: 25
              // color: AppColors.primaryColor,
              ),
        ),
        const SizedBox(
          height: 30,
        ),
        SizedBox(
          width: 551,
          child: RichText(
            text: TextSpan(
                text: "Mission: ",
                style: GoogleFonts.poppins(
                    color: AppColors.primaryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
                children: [
                  TextSpan(
                      style: GoogleFonts.poppins(
                          color: AppColors.blackColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                      text:
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean tristique, tortor nec consequat vulputate.")
                ]),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Container(
          height: 422,
          width: 433,
          decoration: BoxDecoration(
            image: const DecorationImage(
                filterQuality: FilterQuality.low,
                fit: BoxFit.fill,
                image: AssetImage("assets/images/school_block.png")),
            borderRadius: BorderRadius.circular(32),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        SizedBox(
          width: 433,
          child: RichText(
            text: TextSpan(
                text: "Vission : ",
                style: GoogleFonts.poppins(
                    color: AppColors.primaryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
                children: [
                  TextSpan(
                      style: GoogleFonts.poppins(
                          color: AppColors.blackColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                      text:
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean tristique, tortor nec consequat vulputate.")
                ]),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        const Icon(
          Icons.keyboard_double_arrow_down_outlined,
          color: AppColors.primaryColor,
        ),
        const SizedBox(
          height: 16,
        ),
        kTransparentelevetedButton("Read more About us", () {
          context.go(RouteConstants.aboutUs);
        }, textSize: 18)
      ],
    );
