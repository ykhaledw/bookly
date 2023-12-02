
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/best_seller_books_item.dart';
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


