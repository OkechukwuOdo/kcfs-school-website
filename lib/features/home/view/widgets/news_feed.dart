import 'package:flutter/material.dart';
import 'package:kcfs_website/common/styles/colors.dart';
import 'package:kcfs_website/common/widget/text_style.dart';
import 'package:kcfs_website/features/home/view/widgets/top_image.dart';

Container NewsFeed(
    String image, String title, String? detail, final VoidCallback onTap,
    {String? date}) {
  return Container(
    decoration: BoxDecoration(
      color: AppColors.whiteColor,
      borderRadius: BorderRadius.circular(25),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 350,
          height: 250,
          // width: 39,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("assets/images/newsfeed.png"))),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          padding: const EdgeInsets.only(bottom: 0, left: 32),
          width: 330,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              kBelanosimaText(
                  text: title, size: 26, color: AppColors.primaryColor),
              KText(
                  text: detail ??
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit.  ",
                  fontSize: 16),
              const SizedBox(
                height: 25,
              ),
              kElevetedButton("Learn more", textSize: 12, onTap: onTap),
              const SizedBox(
                height: 25,
              )
            ],
          ),
        ),
      ],
    ),
  );
}
