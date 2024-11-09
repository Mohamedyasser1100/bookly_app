import 'package:bookly_app/Features/home/presentation/views/widget/book_list_view_item.dart';
import 'package:flutter/material.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      //عشان ما يسيبش مسافه قبل ال list view
      padding: EdgeInsets.zero,
      itemCount: 14,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          //child: BookListViewItem(),
          child: Text('data'),
        );
      },
    );
  }
}
