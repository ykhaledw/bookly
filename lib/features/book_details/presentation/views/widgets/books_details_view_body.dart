import 'package:bookly/features/book_details/presentation/views/widgets/book_details_section.dart';
import 'package:bookly/features/book_details/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly/features/book_details/presentation/views/widgets/similar_books_section.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  const CustomBookDetailsAppBar(),
                  BookDetailsSection(book: bookModel),
                  const SizedBox(
                    height: 49,
                  ),
                  const SimilarBooksSection(),
                  const SizedBox(
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
