import 'package:bookly_app/Features/home/presentation/views/widget/custome_book_image.dart';
import 'package:flutter/material.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: CustomeBookImage(
              imageUrl:
                  'https://www.google.com/imgres?q=photo%20books&imgurl=https%3A%2F%2Fm.media-amazon.com%2Fimages%2FI%2F719WTtlFxTL._AC_UF894%2C1000_QL80_.jpg&imgrefurl=https%3A%2F%2Fwww.amazon.eg%2F-%2Fen%2FNvhai-Library-Painting-Reading-Artwork%2Fdp%2FB09CM6YJYS&docid=YXVHj4VccIjSLM&tbnid=kigcwD1xAcyzVM&vet=12ahUKEwjc9vu-pc-JAxXiQEEAHVedC-wQM3oECH8QAA..i&w=846&h=1000&hcb=2&ved=2ahUKEwjc9vu-pc-JAxXiQEEAHVedC-wQM3oECH8QAA',
            ),
          );
        },
      ),
    );
  }
}
