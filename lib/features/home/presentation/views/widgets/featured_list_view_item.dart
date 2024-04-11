import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class FeaturedListViewItem extends StatelessWidget {
  const FeaturedListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7/4,
      child: Container(
        margin:  const EdgeInsets.only(left: 10),
        decoration:  const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                AssetsData.testJungleBook,
              ),
              fit: BoxFit.fill),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
    );
  }
}
