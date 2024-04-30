import 'package:flutter/material.dart';

import '../../../../../core/widgets/book_list_view_item.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: SizedBox(
                height: MediaQuery.of(context).size.height*.3,
                child: BookListViewItem()),
          );
        },
      ),
    );
  }
}
