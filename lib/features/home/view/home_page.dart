import 'package:flutter/material.dart';
import 'package:kcfs_website/common/responsive_helper.dart';
import 'package:kcfs_website/common/styles/colors.dart';
import 'package:kcfs_website/common/widget/k_big_screen_appbar.dart';
import 'package:kcfs_website/features/home/view/widgets/blog_post.dart';
import 'package:kcfs_website/features/home/view/widgets/footer.dart';
import 'package:kcfs_website/features/home/view/widgets/programs.dart';
import 'package:kcfs_website/features/home/view/widgets/school_galery.dart';
import 'package:kcfs_website/features/home/view/widgets/school_view.dart';
import 'package:kcfs_website/features/home/view/widgets/top_image.dart';
import 'package:kcfs_website/features/home/view/widgets/upcoing_events.dart';
import 'package:readmore/readmore.dart';

import '../../../common/widget/text_style.dart';

class BigScreenHomePage extends StatelessWidget {
  const BigScreenHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        // extendBodyBehindAppBar: true,
        appBar: appCustomBar(context),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SchoolView(),
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: Column(
                  children: [
                    SchoolOverView(
                      constraints: constraints,
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    const SchoolGalery(),
                    const SizedBox(
                      height: 50,
                    ),
                    const Programs(),
                    const SizedBox(
                      height: 50,
                    ),
                    const UpComingEvents(),
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const PersonalReviews(),
              const SizedBox(
                height: 50,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.0),
                child: BlogPost(),
              ),
              const SizedBox(
                height: 50,
              ),
              const Footer(),
            ],
          ),
        ),
      );
    });
  }
}

class PersonalReviews extends StatelessWidget {
  const PersonalReviews({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ScreenSize.isMobile(context)
        ? smallScreenView(context)
        : Container(
            // padding: EdgeInsets.all(5),
            width: MediaQuery.of(context).size.width,
            height: 653,
            color: AppColors.primaryColor,
            child: Stack(
              alignment: AlignmentDirectional.centerEnd,
              children: [
                Positioned(
                  left: 88,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(32),
                    child: Container(
                      decoration: BoxDecoration(
                          image: const DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage("assets/images/newsfeed.png")),
                          border: Border.all(color: AppColors.primaryColor)),
                      width: 659,
                      height: 526,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 42,
                  // right: MediaQuery.of(context).size.width / 7,
                  right: 88,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(32),
                    child: Container(
                      padding: const EdgeInsets.all(52),
                      decoration:
                          const BoxDecoration(color: AppColors.whiteColor),
                      width: 659,
                      height: 526,
                      child: const Center(
                        child: Column(
                          children: [
                            KText(
                                text:
                                    "At EMST, I’ve been able to develop my communication skills and learned how to work well independently and on a team. With the support of my professors, I’ve been able to gain valuable career experience on and off campus. Ultimately, I’m becoming a stronger leader.",
                                fontSize: 24),
                            Spacer(),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: KText(
                                text: "~ Melvin",
                                fontSize: 36,
                                color: AppColors.primaryColor,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
  }
}

smallScreenView(BuildContext context) {
  return Container(
    // padding: const EdgeInsets.all(50),
    color: AppColors.primaryColor,
    width: MediaQuery.of(context).size.width,
    height: 350,
    child: Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(32),
          // child: Row(
          //   children: [
          //     Container(
          //       decoration: BoxDecoration(
          //           borderRadius: BorderRadius.circular(32),
          //           image: const DecorationImage(
          //               fit: BoxFit.fill,
          //               image: AssetImage("assets/images/newsfeed.png")),
          //           border: Border.all(color: AppColors.primaryColor)),
          //       width: 250,
          //       height: 250,
          //     ),
          //     const Spacer()
          //   ],
          // ),
        ),
        Positioned(
          left: 25,
          top: 35,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(32),
                image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("assets/images/newsfeed.png")),
                border: Border.all(color: AppColors.primaryColor)),
            width: 250,
            height: 250,
          ),
        ),
        Positioned(
          right: 25,
          bottom: 35,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(32),
            child: Container(
              padding: const EdgeInsets.all(25),
              color: AppColors.whiteColor,
              width: 250,
              height: 250,
              child: const Column(
                children: [
                  ReadMoreText(
                    'At EMST, I’ve been able to develop my communication skills and learned how to work well i ndependently and on a team. With the support of my professors, I’ve been able to gain valuable career experience on and off campus. Ultimately, I’m becoming a stronger leader.',
                    trimMode: TrimMode.Line,
                    trimLines: 2,
                    colorClickableText: Colors.pink,
                    trimCollapsedText: 'Show more',
                    trimExpandedText: 'Show less',
                    moreStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: KText(
                      text: "~ Melvin",
                      fontSize: 25,
                      color: AppColors.primaryColor,
                    ),
                  )
                ],
              ),
              //   child: const Text(
              //       "At EMST, I’ve been able to develop my communication skills and learned how to work well independently and on a team. With the support of my professors, I’ve been able to gain valuable career experience on and off campus. Ultimately, I’m becoming a stronger leader."),
            ),
          ),
        ),
      ],
    ),
  );
}
