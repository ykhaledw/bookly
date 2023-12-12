import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/book_details/presentation/views/widgets/book_action.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.book});

  final BookModel book;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.2),
          child: CustomBookImage(
              imageUrl:
                  book.volumeInfo.imageLinks?.thumbnail ?? ''),
        ),
        const SizedBox(
          height: 40,
        ),
        Text(
          book.volumeInfo.title!,
          style: Styles.textStyle30,
        ),
        const SizedBox(
          height: 4,
        ),
        Opacity(
          opacity: 0.7,
          child: Text(
            book.volumeInfo.authors?[0] ?? '',
            style: Styles.textStyle18.copyWith(fontWeight: FontWeight.w500),
          ),
        ),
        const SizedBox(
          height: 14,
        ),
        BookRating(
            count: book.volumeInfo.ratingsCount ?? 0, 
            rating: book.volumeInfo.averageRating ?? 0, 
            mainAxisAlignment: MainAxisAlignment.center,),
        const SizedBox(
          height: 37,
        ),
        BookAction(bookModel: book),
      ],
    );
  }
}
