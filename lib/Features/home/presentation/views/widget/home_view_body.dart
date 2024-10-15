import 'package:bookly_app/Features/home/presentation/views/widget/custome_app_bar.dart';
import 'package:bookly_app/Features/home/presentation/views/widget/features_books_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomeAppBar(),
        FeaturesBooksListView(),
      ],
    );
  }
}
