import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kcfs_website/common/config/app_route_constants.dart';
import 'package:kcfs_website/common/responsive_helper.dart';
import 'package:kcfs_website/common/widget/text_style.dart';
import 'package:kcfs_website/features/home/view/widgets/news_feed.dart';
import 'package:kcfs_website/features/home/view/widgets/top_image.dart';

class BlogPost extends StatelessWidget {
  const BlogPost({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kBelanosimaText(text: "Blog Post", size: 25),
        const SizedBox(
          height: 25,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 36),
          // height: 790,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(32)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              kBelanosimaText(text: "News", size: 45),
              const SizedBox(
                height: 26,
              ),
              !ScreenSize.isMobile(context)
                  ? Wrap(
                    spacing: 20,
                    runSpacing: 20,
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        NewsFeed("", "Which soccer-star was more valuable?",
                            "Lorem ipsum dolor sit amet, consectetur dipiscing elit, ipsum dolor sit ame  ",
                            () {
                          context.go("/");
                        }),
                        NewsFeed(
                            "",
                            "Which soccer-star was more valuable?",
                            "Lorem ipsum dolor sit amet, consectetur dipiscing elit, ipsum dolor sit ame  ",
                            () {}),
                        NewsFeed(
                            "",
                            "Which soccer-star was more valuable?",
                            "Lorem ipsum dolor sit amet, consectetur dipiscing elit, ipsum dolor sit ame  ",
                            () {}),
                      ],
                    )
                  : Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        NewsFeed("", "Which soccer-star was more valuable?",
                            "Lorem ipsum dolor sit amet, consectetur dipiscing elit, ipsum dolor sit ame  ",
                            () {
                          context.go("/");
                        }),
                        const SizedBox(
                          height: 16,
                        ),
                        NewsFeed("", "Which soccer-star was more valuable?",
                            "Lorem ipsum dolor sit amet, consectetur dipiscing elit, ipsum dolor sit ame  ",
                            () {
                          context.go("/");
                        }),
                        const SizedBox(
                          height: 16,
                        ),
                        NewsFeed("", "Which soccer-star was more valuable?",
                            "Lorem ipsum dolor sit amet, consectetur dipiscing elit, ipsum dolor sit ame  ",
                            () {
                          context.go("/");
                        }),
                      ],
                    ),
              const SizedBox(
                height: 25,
              ),
              Align(
                  alignment: const Alignment(0, 0),
                  child: kTransparentelevetedButton("See all blogs", () {
                    context.go(RouteConstants.allBlogPost);
                  }, textSize: 18))
            ],
          ),
        ),
      ],
    );
  }
}
