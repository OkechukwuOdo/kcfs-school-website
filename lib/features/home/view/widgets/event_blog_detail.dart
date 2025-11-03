import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kcfs_website/common/config/app_route_constants.dart';
import 'package:kcfs_website/common/widget/k_big_screen_appbar.dart';
import 'package:kcfs_website/common/widget/k_small_screen_appbar.dart';
import 'package:kcfs_website/common/widget/text_style.dart';
import 'package:kcfs_website/features/home/view/widgets/top_image.dart';
import 'package:kcfs_website/main.dart';


class EventBlogDetail extends StatelessWidget {
  const EventBlogDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      bool isSmallScreen = constraints.maxWidth < 860;
      return Scaffold(
        endDrawer: isSmallScreen ? kDrawer(context) : null,
        // extendBodyBehindAppBar: true,
        appBar: isSmallScreen ? ksmallappBar(context) : appCustomBar(context),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 68, vertical: 48),
            child: Column(
              // padding: EdgeInsets.symmetric(horizontal: 68, vertical: 48),
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 450,
                  height: 444,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("assets/images/school_block.png")),
                    borderRadius: BorderRadius.circular(32),
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                kBelanosimaText(
                    text: "EMST Nursery & Primary school.", size: 40),
                const SizedBox(
                  height: 32,
                ),
                const KText(
                    text:
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                    fontSize: 16),
                const SizedBox(
                  height: 32,
                ),
                kElevetedButton("Purchase form - N12,000 ", textSize: 16,
                    onTap: () {
                  context.go(RouteConstants.allEvents);
                })
              ],
            ),
          ),
        ),
      );
    });
  }
}
