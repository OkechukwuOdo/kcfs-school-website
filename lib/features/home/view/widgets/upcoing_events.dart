import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kcfs_website/common/config/app_route_constants.dart';
import 'package:kcfs_website/common/widget/text_style.dart';
import 'package:kcfs_website/features/home/view/widgets/news_feed.dart';
import 'package:kcfs_website/features/home/view/widgets/top_image.dart';

class UpComingEvents extends StatelessWidget {
  const UpComingEvents({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kBelanosimaText(text: 'Upcoming Events', size: 25),
        const SizedBox(
          height: 25,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 36),

          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(32)),
          // height: 700,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              kBelanosimaText(text: 'Event', size: 45),
              const SizedBox(
                height: 26,
              ),
              MediaQuery.of(context).size.width > 600
                  ? Wrap(
                    spacing: 20,
                    runSpacing: 20,
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        NewsFeed(
                            "Lorem ipsum dolor sit amet, consectetur dipiscing elit, ipsum dolor sit ame  ",
                            "End of the year - Christmas Party",
                            "Lorem ipsum dolor sit amet, consectetur dipiscing elit, ipsum dolor sit ame  ",
                            () {}),
                        NewsFeed(
                            "Lorem ipsum dolor sit amet, consectetur dipiscing elit, ipsum dolor sit ame  ",
                            "End of the year - Christmas Party",
                            "Lorem ipsum dolor sit amet, consectetur dipiscing elit, ipsum dolor sit ame  ",
                            () {}),
                        NewsFeed(
                            "Lorem ipsum dolor sit amet, consectetur dipiscing elit, ipsum dolor sit ame  ",
                            "End of the year - Christmas Party",
                            "Lorem ipsum dolor sit amet, consectetur dipiscing elit, ipsum dolor sit ame  ",
                            () {})
                      ],
                    )
                  : Column(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        NewsFeed(
                            "Lorem ipsum dolor sit amet, consectetur dipiscing elit, ipsum dolor sit ame  ",
                            "End of the year - Christmas Party",
                            "Lorem ipsum dolor sit amet, consectetur dipiscing elit, ipsum dolor sit ame  ",
                            () {}),
                        const SizedBox(
                          height: 20,
                        ),
                        NewsFeed(
                            "Lorem ipsum dolor sit amet, consectetur dipiscing elit, ipsum dolor sit ame  ",
                            "End of the year - Christmas Party",
                            "Lorem ipsum dolor sit amet, consectetur dipiscing elit, ipsum dolor sit ame  ",
                            () {}),
                        const SizedBox(
                          height: 20,
                        ),
                        NewsFeed(
                            "Lorem ipsum dolor sit amet, consectetur dipiscing elit, ipsum dolor sit ame  ",
                            "End of the year - Christmas Party",
                            "Lorem ipsum dolor sit amet, consectetur dipiscing elit, ipsum dolor sit ame  ",
                            () {}),
                      ],
                    ),
              const SizedBox(
                height: 25,
              ),
              Align(
                  alignment: const Alignment(0, 0),
                  child: kTransparentelevetedButton("See all events", () {
                    context.go(RouteConstants.allEvents, extra: null);
                  }, textSize: 18))
            ],
          ),
        ),
      ],
    );
  }
}
