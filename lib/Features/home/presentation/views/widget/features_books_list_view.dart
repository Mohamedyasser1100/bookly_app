import 'package:bookly_app/Features/home/presentation/views/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/Features/home/presentation/views/widget/custome_book_image.dart';
import 'package:bookly_app/core/widgets/custome_error_widget.dart';
import 'package:bookly_app/core/widgets/custome_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturesBooksListView extends StatelessWidget {
  const FeaturesBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: state.books.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: CustomeBookImage(
                      imageUrl:
                          state.books[index].volumeInfo.imageLinks?.thumbnail ??
                              '',
                    ),
                  );
                }),
          );
        } else if (state is FeaturedBooksFailure) {
          return CustomeErrorWidget(errMessage: state.errMessage);
        } else {
          return const CustomeLoadingIndicator();
        }
      },
    );
  }
}
