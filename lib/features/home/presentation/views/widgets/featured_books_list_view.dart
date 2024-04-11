import 'package:flutter/material.dart';

import 'featured_list_view_item.dart';

class FeatureBooksListView extends StatelessWidget {
  const FeatureBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*.3,

      child: Padding(
        padding: const EdgeInsets.only(left: 30.0,right: 10),
        child: ListView.builder(
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const FeaturedListViewItem();
          },
        ),
      ),
    );
  }
}
