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
                  'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.pexels.com%2Fphoto%2Fa-photography-of-a-man-standing-on-a-tree-3680219%2F&psig=AOvVaw0-6Hi9cwEzXaABpgRyf7SR&ust=1730912332995000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCOjZwYrVxYkDFQAAAAAdAAAAABAE',
            ),
          );
        },
      ),
    );
  }
}
