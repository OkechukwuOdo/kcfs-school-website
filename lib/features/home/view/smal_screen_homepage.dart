import 'package:flutter/material.dart';
import 'package:kcfs_website/common/widget/k_small_screen_appbar.dart';
import 'package:kcfs_website/features/home/view/home_page.dart';
import 'package:kcfs_website/features/home/view/widgets/blog_post.dart';
import 'package:kcfs_website/features/home/view/widgets/footer.dart';
import 'package:kcfs_website/features/home/view/widgets/programs.dart';
import 'package:kcfs_website/features/home/view/widgets/school_galery.dart';
import 'package:kcfs_website/features/home/view/widgets/school_view.dart';
import 'package:kcfs_website/features/home/view/widgets/top_image.dart';
import 'package:kcfs_website/features/home/view/widgets/upcoing_events.dart';
import 'package:kcfs_website/main.dart';

class SmalScreenHomepage extends StatelessWidget {
  const SmalScreenHomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: kDrawer(context),
      appBar: ksmallappBar(context),
      body: ListView(
        children: [
          const SchoolView(),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Column(
              children: [
                schoolOverViewOnSmallScreen(context),
                const SizedBox(
                  height: 55,
                ),
                const SchoolGalery(),
                const SizedBox(
                  height: 55,
                ),
                const Programs(),
                const SizedBox(
                  height: 55,
                ),
                const UpComingEvents(),
              ],
            ),
          ),
          const SizedBox(
            height: 55,
          ),
          // const PersonalReviews(),
          smallScreenView(context),
          const SizedBox(
            height: 55,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0),
            child: BlogPost(),
          ),
          const SizedBox(
            height: 55,
          ),
          const SmallScreenFooter(),
        ],
      ),
    );
  }
}
