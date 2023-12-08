import 'package:bookly/features/book_details/presentation/views/widgets/book_details_section.dart';
import 'package:bookly/features/book_details/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly/features/book_details/presentation/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  CustomBookDetailsAppBar(),
                  BookDetailsSection(),
                  SizedBox(
                    height: 49,
                  ),
                  SimilarBooksSection(),
                  SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
