import 'package:bookly_app/core/utils/asset_data.dart';
import 'package:flutter/material.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
                image: DecorationImage(
                  image: AssetImage(AssetData.testImage),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Column(
            children: [],
          ),
        ],
      ),
    );
  }
}
