import 'package:bookly_app/Features/home/presentation/views/widget/best_seller_list_view_item.dart';
import 'package:bookly_app/Features/home/presentation/views/widget/custome_app_bar.dart';
import 'package:bookly_app/Features/home/presentation/views/widget/features_books_list_view.dart';
import 'package:bookly_app/constans.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomeAppBar(),
          FeaturesBooksListView(),
          SizedBox(
            height: 50,
          ),
          Text(
            'Best seller',
            style: Styles.textStyle20,
          ),
          BestSellerListViewItem(),
        ],
      ),
    );
  }
}
