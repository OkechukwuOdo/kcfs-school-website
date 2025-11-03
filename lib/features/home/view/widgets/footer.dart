import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kcfs_website/common/styles/colors.dart';
import 'package:kcfs_website/common/widget/customText.dart';


class Footer extends StatelessWidget {
  const Footer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(right: 65, left: 65, top: 45),
            // height: 412,
            color: AppColors.primaryColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          "assets/images/schoollogo.png",
                          color: AppColors.whiteColor,
                        ),
                        const VerticalDivider(
                          color: AppColors.whiteColor,
                          thickness: 34,
                        ),
                        const SizedBox(
                          width: 257,
                          child: Customtext(
                            text: "Enugu metropolitan schools of Technology",
                            size: 20,
                            color: AppColors.whiteColor,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const SizedBox(
                        width: 380,
                        child: Text(
                            style: TextStyle(
                                color: AppColors.secondaryColor, fontSize: 18),
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the.")),
                    const SizedBox(
                      height: 50,
                    ),
                  ],
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Customtext(
                      text: "About us",
                      size: 20,
                      color: AppColors.whiteColor,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    FooterTExt(
                      text: 'Company Information',
                    ),
                    FooterTExt(
                      text: 'Resources',
                    ),
                    FooterTExt(
                      text: 'Our Success',
                    ),
                    FooterTExt(
                      text: 'Meet The Experts',
                    )
                  ],
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Customtext(
                      text: "Faculty",
                      size: 20,
                      color: AppColors.whiteColor,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    FooterTExt(
                      text: 'Natural Sciences',
                    ),
                    FooterTExt(
                      text: 'Art',
                    ),
                    FooterTExt(
                      text: 'Education',
                    ),
                    FooterTExt(
                      text: 'JUPEB',
                    )
                  ],
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Customtext(
                      text: "Support",
                      size: 20,
                      color: AppColors.whiteColor,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    FooterTExt(
                      text: 'Contact Us',
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Customtext(
                      text: "Newsletter",
                      size: 20,
                      color: AppColors.whiteColor,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const SizedBox(
                      width: 254,
                      child: FooterTExt(
                        text:
                            'Join Our Mailing List To Stay Up To Date With World',
                      ),
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 6),
                      width: 335,
                      height: 50,
                      decoration: BoxDecoration(
                          color: AppColors.whiteColor,
                          borderRadius: BorderRadius.circular(75)),
                      child: Row(
                        children: [
                          const Expanded(
                              child: TextField(
                            decoration: InputDecoration(
                                hintText: "Email Address",
                                contentPadding:
                                    EdgeInsets.symmetric(horizontal: 8),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none)),
                          )),
                          OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                  fixedSize: const Size(138, 42),
                                  backgroundColor: AppColors.primaryColor,
                                  foregroundColor: AppColors.whiteColor,
                                  side: const BorderSide(
                                      color: Colors.transparent)),
                              onPressed: () {},
                              child: Text(
                                "Subscribe",
                                style: GoogleFonts.poppins(fontSize: 16),
                              ))
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
              height: 50,
              // color: AppColors.whiteColor.withBlue(2),
              color: AppColors.primaryColor.withValues(alpha: 0.4),
              child: const Center(
                  child:
                      Text("© 2022 Single Best Answer | All Rights Researved")))
        ],
      ),
    );
  }
}

class FooterTExt extends StatelessWidget {
  final String text;
  const FooterTExt({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(color: AppColors.secondaryColor, fontSize: 16),
    );
  }
}

class SmallScreenFooter extends StatelessWidget {
  const SmallScreenFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(right: 25, left: 25, top: 45),
            // height: 412,
            color: AppColors.primaryColor,
            child: Column(
              spacing: 24,
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          "assets/images/schoollogo.png",
                          color: AppColors.whiteColor,
                        ),
                        const VerticalDivider(
                          color: AppColors.whiteColor,
                          thickness: 34,
                        ),
                        const SizedBox(
                          // width: 257,
                          child: Customtext(
                            text: "Enugu metropolitan \nschools of Technology",
                            size: 20,
                            color: AppColors.whiteColor,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const SizedBox(
                        width: 380,
                        child: Text(
                            style: TextStyle(
                                color: AppColors.secondaryColor, fontSize: 18),
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the.")),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Customtext(
                      text: "About us",
                      size: 20,
                      color: AppColors.whiteColor,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    FooterTExt(
                      text: 'Company Information',
                    ),
                    FooterTExt(
                      text: 'Resources',
                    ),
                    FooterTExt(
                      text: 'Our Success',
                    ),
                    FooterTExt(
                      text: 'Meet The Experts',
                    )
                  ],
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Customtext(
                      text: "Faculty",
                      size: 20,
                      color: AppColors.whiteColor,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    FooterTExt(
                      text: 'Natural Sciences',
                    ),
                    FooterTExt(
                      text: 'Art',
                    ),
                    FooterTExt(
                      text: 'Education',
                    ),
                    FooterTExt(
                      text: 'JUPEB',
                    )
                  ],
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Customtext(
                      text: "Support",
                      size: 20,
                      color: AppColors.whiteColor,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    FooterTExt(
                      text: 'Contact Us',
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Customtext(
                      text: "Newsletter",
                      size: 20,
                      color: AppColors.whiteColor,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const SizedBox(
                      width: 254,
                      child: FooterTExt(
                        text:
                            'Join Our Mailing List To Stay Up To Date With World',
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 6),
                      width: 335,
                      height: 40,
                      decoration: BoxDecoration(
                          color: AppColors.whiteColor,
                          borderRadius: BorderRadius.circular(75)),
                      child: Row(
                        children: [
                          const Expanded(
                              child: TextField(
                            decoration: InputDecoration(
                                hintText: "Email Address",
                                contentPadding:
                                    EdgeInsets.symmetric(horizontal: 8),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none)),
                          )),
                          OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                  fixedSize: const Size(138, 42),
                                  backgroundColor: AppColors.primaryColor,
                                  foregroundColor: AppColors.whiteColor,
                                  side: const BorderSide(
                                      color: Colors.transparent)),
                              onPressed: () {},
                              child: Text(
                                "Subscribe",
                                style: GoogleFonts.poppins(fontSize: 16),
                              ))
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
              height: 50,
              // color: AppColors.whiteColor.withBlue(2),
              color: AppColors.primaryColor.withValues(alpha: 0.4),
              child: const Center(
                  child:
                      Text("© 2022 Single Best Answer | All Rights Researved")))
        ],
      ),
    );
  }
}
