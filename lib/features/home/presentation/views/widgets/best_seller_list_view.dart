import 'package:bookly/core/widgets/custom_failure_widget.dart';
import 'package:bookly/core/widgets/custom_loading_widget.dart';
import 'package:bookly/features/home/presentation/views/widgets/best_seller_books_item.dart';
import 'package:bookly/features/home/presentation/views_model/newest_books_cubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewestBooksListView extends StatelessWidget {
  const NewestBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              itemCount: 10,
              itemBuilder: (context, index) {
                return  Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: BooksListItem(
                    imageUrl: state.books[index].volumeInfo.imageLinks.thumbnail,
                  ),
                );
              });
        } else if (state is NewestBooksFailure) {
          return CustomFailureWidget(errorMessage: state.errorMessage);
        } else {
          return const Center(child: CustomLoadingWidget());
        }
      },
    );
  }
}
