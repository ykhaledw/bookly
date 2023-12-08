import 'package:bookly/features/book_details/presentation/views/widgets/books_details_view_body.dart';
import 'package:flutter/material.dart';

class BooksDetailsView extends StatelessWidget {
  const BooksDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BookDetailsViewBody(),
    );
  }
}