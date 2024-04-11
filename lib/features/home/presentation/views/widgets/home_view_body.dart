import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom_app_bar.dart';
import 'featured_books_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start
      ,
      children: [
        CustomAppBar(),
        FeatureBooksListView(),
        SizedBox(height: 40,),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Text("Best Seller",style: Styles.textStyle18,),
        )
      ],
    );
  }
}


