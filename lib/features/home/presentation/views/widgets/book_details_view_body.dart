import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rating.dart';
import 'package:flutter/material.dart';

import 'custom_book_details_app_bar.dart';
import 'custom_book_image.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    return  SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CustomBookDetailsAppBar(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width*.17,),
              child: const CustomBookImage(),
            ),
            const SizedBox(height: 6,),
            const Text(
              "TheJunGleBook",
              style: Styles.textStyle30,
            ),
            const SizedBox(height: 6,),
            const Text(
              "The Legend Well",
              style: Styles.textStyle20,
            ),
            const SizedBox(height: 6,),
            const BookRating()

          ],
        ),
      ),
    );
  }
}
