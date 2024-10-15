import 'package:flutter/material.dart';

class CustomeListViewItem extends StatelessWidget {
  const CustomeListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.white,
            image: DecorationImage(
              image: AssetImage('assets/images/test_image.png'),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
