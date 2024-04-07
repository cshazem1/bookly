import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*.3,

      child: AspectRatio(
        aspectRatio: 2.7/4,
        child: Container(

          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  AssetsData.testJungleBook,
                ),
                fit: BoxFit.fill),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
      ),
    );
  }
}
