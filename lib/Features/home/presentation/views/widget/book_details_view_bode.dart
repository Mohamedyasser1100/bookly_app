import 'package:bookly_app/Features/home/presentation/views/widget/custome_book_details_app_bar.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBode extends StatelessWidget {
  const BookDetailsViewBode({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          CustomeBookDetailsAppBar(),
        ],
      ),
    );
  }
}
