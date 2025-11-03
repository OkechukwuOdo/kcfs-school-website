
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kcfs_website/common/config/app_route_constants.dart';
import 'package:kcfs_website/common/widget/k_big_screen_appbar.dart';
import 'package:kcfs_website/common/widget/k_small_screen_appbar.dart';
import 'package:kcfs_website/common/widget/text_style.dart';
import 'package:kcfs_website/features/home/view/widgets/news_feed.dart';
import 'package:kcfs_website/main.dart';

class AllBlogPost extends StatelessWidget {
  const AllBlogPost({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      bool isSmallScreen = constraints.maxWidth < 600;
      return Scaffold(
          endDrawer: isSmallScreen ? kDrawer(context) : null,
          // extendBodyBehindAppBar: true,
          appBar: isSmallScreen ? ksmallappBar(context) : appCustomBar(context),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 68, vertical: 36),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                kBelanosimaText(text: "Blog Post", size: 44),
                const SizedBox(
                  height: 24,
                ),
                Expanded(
                  child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                              mainAxisExtent: 510,
                              maxCrossAxisExtent: 410,
                              mainAxisSpacing: 32,
                              crossAxisSpacing: 32),
                      itemBuilder: (contex, index) {
                        return NewsFeed(
                            "image",
                            "EMST Welcomes New Vice Chancellor ",
                            "Lorem ipsum dolor sit amet, consectetur dipiscing elit, ipsum dolor sit ame  ",
                            () {
                          context.go(RouteConstants.eventDetail);
                        });
                      }),
                ),
              ],
            ),
          ));
    });
  }
}
