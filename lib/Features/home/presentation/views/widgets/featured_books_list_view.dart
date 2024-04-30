

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../manger/feature_books_cubit/feature_books_cubit.dart';
import 'custom_book_image.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatureBooksCubit, FeatureBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery
                .of(context)
                .size
                .height * .3,

            child: ListView.builder(
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return  Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: CustomBookImage(
                    urlImage: state.books[index].volumeInfo.imageLinks?.thumbnail??'https://th.bing.com/th/id/OIP.xZJZw_4WdsaFYZxh5LC2XwHaE8?rs=1&pid=ImgDetMain',
                  ),
                );
              },
            ),
          );
        }
        else if (state is FeaturedBooksFailure) {
          return Text(state.errMessage);
        }
        else {
          return Center(child: const CircularProgressIndicator());
        }
      },
    );
  }
}
