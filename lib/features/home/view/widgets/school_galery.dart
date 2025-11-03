import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:go_router/go_router.dart';
import 'package:kcfs_website/common/config/app_route_constants.dart';
import 'package:kcfs_website/common/styles/colors.dart';
import 'package:kcfs_website/common/widget/text_style.dart';
class SchoolGalery extends StatelessWidget {
  const SchoolGalery({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kBelanosimaText(text: "School Gallery", size: 35),
        const SizedBox(
          height: 30,
        ),
        StaggeredGrid.count(
          crossAxisCount: 5,
          mainAxisSpacing: 18,
          crossAxisSpacing: 18,
          children: const [
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 2,
              child: GalleryItem(
                image: 'assets/images/galery.png',
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 3,
              mainAxisCellCount: 2,
              child: GalleryItem(
                image: 'assets/images/schoolgalery2.png',
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: GalleryItem(
                image: 'assets/images/schollgalery3.png',
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: GalleryItem(
                image: 'assets/images/galery.png',
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: GalleryItem(
                image: 'assets/images/schollgalery3.png',
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: GalleryItem(
                image: 'assets/images/galery.png',
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: GalleryItem(
                image: 'assets/images/schoolgalery2.png',
              ),
            ),
          ],
        ),
        Align(
            alignment: Alignment.bottomRight,
            child: IconButton(
                onPressed: () {
                  context.go(RouteConstants.allGalery);
                },
                icon: const Icon(
                  Icons.add,
                  color: AppColors.primaryColor,
                )))
      ],
    );
  }
}

class GalleryItem extends StatelessWidget {
  final String image;
  const GalleryItem({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              filterQuality: FilterQuality.low,
              fit: BoxFit.fill,
              image: AssetImage(image))),
      // color: AppColors.primaryColor,
    );
  }
}
