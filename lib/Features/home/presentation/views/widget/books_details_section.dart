import 'package:bookly_app/Features/home/presentation/views/widget/book_rating.dart';
import 'package:bookly_app/Features/home/presentation/views/widget/books_action.dart';
import 'package:bookly_app/Features/home/presentation/views/widget/custome_book_image.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.20),
          child: const CustomeBookImage(
            imageUrl:
                'https://www.google.com/imgres?q=photo%20books&imgurl=https%3A%2F%2Fm.media-amazon.com%2Fimages%2FI%2F719WTtlFxTL._AC_UF894%2C1000_QL80_.jpg&imgrefurl=https%3A%2F%2Fwww.amazon.eg%2F-%2Fen%2FNvhai-Library-Painting-Reading-Artwork%2Fdp%2FB09CM6YJYS&docid=YXVHj4VccIjSLM&tbnid=kigcwD1xAcyzVM&vet=12ahUKEwjc9vu-pc-JAxXiQEEAHVedC-wQM3oECH8QAA..i&w=846&h=1000&hcb=2&ved=2ahUKEwjc9vu-pc-JAxXiQEEAHVedC-wQM3oECH8QAA',
          ),
        ),
        const SizedBox(
          height: 43,
        ),
        Text(
          'The Jungle book',
          style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: 0.7,
          child: Text(
            'Rudyard Kipling',
            style: Styles.textStyle18.copyWith(
                fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
          rating: 5,
          count: 250,
        ),
        const SizedBox(
          height: 37,
        ),
        const BooksAction(),
      ],
    );
  }
}
