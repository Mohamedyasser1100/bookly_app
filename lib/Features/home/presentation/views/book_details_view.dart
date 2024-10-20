import 'package:bookly_app/Features/home/presentation/views/widget/book_details_view_bode.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: BookDetailsViewBode(),
      ),
    );
  }
}