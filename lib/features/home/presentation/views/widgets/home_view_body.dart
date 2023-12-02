import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/featured_book_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 40,
        ),
        CustomAppBar(),
        SizedBox(
          height: 30,
        ),
        FeaturedBooksListView(),
        SizedBox(
          height: 50,
        ),
        Text(
          'Best Seller',
          style: Styles.textStyle18,
        ),
        SizedBox(height: 20),
        BestSellerBooksItem(),
      ],
    );
  }
}

class BestSellerBooksItem extends StatelessWidget {
  const BestSellerBooksItem({super.key});

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
                color: Colors.red,
                image: const DecorationImage(
                  image: AssetImage(AssetsData.kTestImage),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          const SizedBox(width: 30,),
          Column(
            children: [],
          ),
        ],
      ),
    );
  }
}
