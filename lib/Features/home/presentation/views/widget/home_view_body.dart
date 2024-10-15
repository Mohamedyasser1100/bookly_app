import 'package:bookly_app/Features/home/presentation/views/widget/custome_app_bar.dart';
import 'package:bookly_app/core/utils/asset_data.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomeAppBar(),
      ],
    );
  }
}
