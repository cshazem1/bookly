import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/features/home/presentation/views/widgets/similar_books_details_list_view.dart';
import 'package:flutter/material.dart';
import 'books_action.dart';
import 'custom_book_details_app_bar.dart';
import 'custom_book_image.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CustomBookDetailsAppBar(),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: width * .2,
              ),
              child: const CustomBookImage(),
            ),
            const SizedBox(
              height: 43,
            ),
            Text(
              "The JunGle Book",
              style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 6,
            ),
            Opacity(
              opacity: .7,
              child: Text(
                "The Legend Well",
                style: Styles.textStyle20.copyWith(
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            const BookRating(
              mainAxisAlignment: MainAxisAlignment.center,
            ),
            const SizedBox(
              height: 37,
            ),
            const BooksAction(),
            const SizedBox(
              height: 50,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "The JunGle Book",
                style: Styles.textStyle14.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(height: 16,),
            const SimilarBooksDetailsListView(),
            const SizedBox(height: 40,),


          ],
        ),
      ),
    );
  }
}


