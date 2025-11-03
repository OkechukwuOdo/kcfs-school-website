import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class AllGalery extends StatelessWidget {
  const AllGalery({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: MasonryGridView.builder(
      itemCount: 6,
      itemBuilder: (contect, index) {
        return Image.asset("image: 'assets/images/schoolgalery2.png',");
      },
      gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2),
    ));
  }
}
