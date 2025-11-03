import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kcfs_website/common/config/app_route_constants.dart';
import 'package:kcfs_website/common/responsive_helper.dart';
import 'package:kcfs_website/common/styles/colors.dart';
import 'package:kcfs_website/common/widget/text_style.dart';
import 'package:kcfs_website/features/home/view/widgets/news_feed.dart';
import 'package:kcfs_website/main.dart';

class Programs extends StatelessWidget {
  const Programs({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double maxWith=MediaQuery.of(context).size.width*0.75;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              kBelanosimaText(text: "Explore our programs", size: 25),
              kTextButton("See more",
                  textSize: 12, textColor: AppColors.primaryColor)
            ],
          ),
          const SizedBox(
            height: 35,
          ),
          !ScreenSize.isMobile(context)
              ? Wrap(
                runSpacing: 20,
                spacing: 20,
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    NewsFeed(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                        "Nursery & Primary school",
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                        () {
                      context.go(RouteConstants.programDetail);
                    }),
                    NewsFeed("Secondary school ", "Secondary school",
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                        () {
                      context.go(RouteConstants.programDetail);
                    }),
                    NewsFeed("Undergraduate studies ", "Undergraduate studies",
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                        () {
                      context.go(RouteConstants.programDetail);
                    }),
                  ],
                )
              : Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    NewsFeed("Undergraduate studies", "Undergraduate studies",
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                        () {
                      context.go(RouteConstants.programDetail);
                    }),
                    const SizedBox(
                      height: 16,
                    ),
                    NewsFeed("Undergraduate studies", "Undergraduate studies",
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                        () {
                      context.go(RouteConstants.programDetail);
                    }),
                    const SizedBox(
                      height: 16,
                    ),
                    NewsFeed("Undergraduate studies", "Undergraduate studies",
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                        () {
                      context.go(RouteConstants.programDetail);
                    }),
                  ],
                )
        ],
      ),
    );
  }
}

// Container NewsFeed(String image, String title, String detail, {String? date}) {
//   return Container(
//     decoration: BoxDecoration(
//       color: AppColors.whiteColor,
//       borderRadius: BorderRadius.circular(25),
//     ),
//     child: Column(
//       children: [
//         Container(
//           width: 397,
//           height: 250,
//           // width: 39,
//           decoration: BoxDecoration(
//               image: DecorationImage(
//                   fit: BoxFit.fill,
//                   image: AssetImage("assets/images/newsfeed.png"))),
//         ),
//         SizedBox(
//           height: 20,
//         ),
//         Container(
//           padding: EdgeInsets.only(bottom: 42),
//           width: 333,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               kBelanosimaText("Nursery & Primary school", 26,
//                   color: AppColors.primaryColor),
//               KText(
//                   text:
//                       "Lorem ipsum dolor sit amet, consectetur adipiscing elit.  ",
//                   fontSize: 16),
//               SizedBox(
//                 height: 25,
//               ),
//               kElevetedButton("Learn more", textSize: 16)
//             ],
//           ),
//         ),
//       ],
//     ),
//   );
// }
