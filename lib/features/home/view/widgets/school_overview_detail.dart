import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kcfs_website/common/styles/colors.dart';
import 'package:kcfs_website/common/widget/k_big_screen_appbar.dart';
import 'package:kcfs_website/common/widget/k_small_screen_appbar.dart';
import 'package:kcfs_website/common/widget/text_style.dart';
import 'package:kcfs_website/main.dart';


class SchoolOverviewDetail extends StatelessWidget {
  const SchoolOverviewDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      double maxWidth=MediaQuery.of(context).size.width*0.90;
      bool isSmallScreen = constraints.maxWidth < 860;
      return Scaffold(
        endDrawer: isSmallScreen ? kDrawer(context) : null,
        // extendBodyBehindAppBar: true,
        appBar: isSmallScreen ? ksmallappBar(context) : appCustomBar(context),
        body: isSmallScreen
            ? schoolOverviewDetailOnSmallScreen()
            :Center(
              child: Container(
                constraints: BoxConstraints(maxWidth: maxWidth),
                // padding: EdgeInsets.symmetric(horizontal: 0,vertical: 22),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 3,
                      child: SingleChildScrollView(
                        
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                             const KText(
                                      text: "--About us",
                                      fontSize: 16,
                                      color: AppColors.primaryColor,
                                    ),
                                       const SizedBox(
                                      height: 28,
                                    ),
                                     AutoSizeText(
                  "EMST Commitment to Academic Excellence",
                  style: GoogleFonts.belanosima(
                      fontSize: 45, color: AppColors.primaryColor),
                  maxLines: 3,
                  minFontSize: 20,
                  stepGranularity: 5,
                ),
                                    AutoSizeText("EMST Commitment to Academic Excellence"
              
                                    ),
                                    // kBelanosimaText(
                                    //     text:
                                    //         "EMST Commitment to Academic Excellence",
                                    //     size: 45),
                                    const SizedBox(
                                      height: 28,
                                    ),
                                     const KText(
                                        text:
                                            "Lorem ipsum dolor sit amet consectetur adipiscing elit dolor posuere vel venenatis eu sit massa volutpat massa rhoncus odio feugiat tellus, elit massa sed.Lorem ipsum dolor sit amet consectetur adipiscing elit dolor posuere vel venenatis eu sit massa volutpat massa rhoncus odio feugiat tellus, elit massa sed.Lorem ipsum dolor sit amet consectetur adipiscing elit dolor posuere vel venenatis eu sit massa volutpat massa rhoncus odio feugiat tellus, elit massa sed.Lorem ipsum dolor sit amet consectetur adipiscing elit dolor posuere vel venenatis eu sit massa volutpat massa rhoncus odio feugiat tellus, elit massa sed.",
                                        fontSize: 16),
                          ],
                        ),
                      )),
              SizedBox(width: 25,),
                    Expanded(
                      flex: 2,
                      child: Container(
                        height: 550,
                        // margin: EdgeInsets.only(left: 12),
                       decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(32),
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          
                          image: AssetImage("assets/images/school_block.png"))
                       ),)),
                  ],
                ),
              ),
            )
            // : Container(
            //     padding: const EdgeInsets.all(40),
            //     child: Row(
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //       children: [
            //         SingleChildScrollView(
            //           child: Expanded(
            //             flex: 2,
            //             child: SizedBox(
            //               // width: 650,
            //               child: Column(
            //                 mainAxisAlignment: MainAxisAlignment.start,
            //                 crossAxisAlignment: CrossAxisAlignment.start,
            //                 children: [
            //                   const KText(
            //                     text: "--About us",
            //                     fontSize: 12,
            //                     color: AppColors.primaryColor,
            //                   ),
            //                   const SizedBox(
            //                     height: 28,
            //                   ),
            //                   kBelanosimaText(
            //                       text:
            //                           "EMST Commitment to Academic Excellence",
            //                       size: 45),
            //                   const SizedBox(
            //                     height: 28,
            //                   ),
            //                   const KText(
            //                       text:
            //                           "Lorem ipsum dolor sit amet consectetur adipiscing elit dolor posuere vel venenatis eu sit massa volutpat massa rhoncus odio feugiat tellus, elit massa sed.Lorem ipsum dolor sit amet consectetur adipiscing elit dolor posuere vel venenatis eu sit massa volutpat massa rhoncus odio feugiat tellus, elit massa sed.Lorem ipsum dolor sit amet consectetur adipiscing elit dolor posuere vel venenatis eu sit massa volutpat massa rhoncus odio feugiat tellus, elit massa sed.Lorem ipsum dolor sit amet consectetur adipiscing elit dolor posuere vel venenatis eu sit massa volutpat massa rhoncus odio feugiat tellus, elit massa sed.",
            //                       fontSize: 16),
            //                 ],
            //               ),
            //             ),
            //           ),
            //         ),
            //         const SizedBox(
            //           width: 40,
            //         ),
            //         Expanded(
            //           flex: 2,
            //           child: Container(
            //             // width: 650,
            //             // height: constraints.minHeight,
            //             decoration: BoxDecoration(
            //               image: const DecorationImage(
            //                   fit: BoxFit.fill,
            //                   image:
            //                       AssetImage("assets/images/school_block.png")),
            //               borderRadius: BorderRadius.circular(32),
            //             ),
            //           ),
            //         )
            //       ],
            //     ),
            //   ),
      );
    });
  }

  schoolOverviewDetailOnSmallScreen() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          children: [
            Container(
              width: 650,
              height: 450,
              // height: constraints.minHeight,
              decoration: BoxDecoration(
                image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("assets/images/school_block.png")),
                borderRadius: BorderRadius.circular(32),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const KText(
                  text: "---About us",
                  fontSize: 12,
                  color: AppColors.primaryColor,
                ),
                const SizedBox(
                  height: 28,
                ),
                kBelanosimaText(
                    text: "EMST Commitment to Academic Excellence", size: 45),
                const SizedBox(
                  height: 28,
                ),
                const KText(
                    text:
                        "Lorem ipsum dolor sit amet consectetur adipiscing elit dolor posuere vel venenatis eu sit massa volutpat massa rhoncus odio feugiat tellus, elit massa sed.Lorem ipsum dolor sit amet consectetur adipiscing elit dolor posuere vel venenatis eu sit massa volutpat massa rhoncus odio feugiat tellus, elit massa sed.Lorem ipsum dolor sit amet consectetur adipiscing elit dolor posuere vel venenatis eu sit massa volutpat massa rhoncus odio feugiat tellus, elit massa sed.Lorem ipsum dolor sit amet consectetur adipiscing elit dolor posuere vel venenatis eu sit massa volutpat massa rhoncus odio feugiat tellus, elit massa sed.",
                    fontSize: 16)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
