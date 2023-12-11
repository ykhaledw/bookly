import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rating.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BooksListItem extends StatelessWidget {
  const BooksListItem({super.key, required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsView);
      },
      child: SizedBox(
        height: 125,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            children: [
              AspectRatio(
                aspectRatio: 2.5 / 4,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.red,
                    image: DecorationImage(
                      image: NetworkImage(imageUrl),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Text(
                        'Harry Potter and the Goblet of Fire',
                        style: Styles.textStyle20
                            .copyWith(fontFamily: kGtSectraFine),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Text(
                      'J.K. Rowling',
                      style: Styles.textStyle14
                          .copyWith(color: const Color(0xff707070)),
                    ),
                    const Row(
                      children: [
                        Text(
                          '19.99 €',
                          style: Styles.textStyle20,
                        ),
                        Spacer(),
                        BookRating(),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
