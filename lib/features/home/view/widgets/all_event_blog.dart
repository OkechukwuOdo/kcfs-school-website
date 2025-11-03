import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kcfs_website/common/config/app_route_constants.dart';
import 'package:kcfs_website/common/widget/k_small_screen_appbar.dart';
import 'package:kcfs_website/features/home/view/widgets/news_feed.dart';
import 'package:kcfs_website/main.dart';


import '../../../../common/widget/text_style.dart';
import '../../../../common/widget/k_big_screen_appbar.dart';

class AllEventBlog extends StatelessWidget {
  const AllEventBlog({super.key});

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
                kBelanosimaText(text: "Events", size: 44),
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
                        // retu
                        return NewsFeed(
                            "image",
                            "End of the year - Christmas Party",
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
