import 'package:flutter/material.dart';

import 'custom_book_image.dart';

class SimilarBooksDetailsListView extends StatelessWidget {
  const SimilarBooksDetailsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*.15,

      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: CustomBookImage(urlImage: 'https://th.bing.com/th/id/OIP.s6qkxOqsGKB_7JnvbKujWAHaE2?w=288&h=189&c=7&r=0&o=5&pid=1.7'),
          );
        },
      ),
    );
  }
}
