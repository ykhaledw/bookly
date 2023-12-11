import 'package:bookly/features/home/presentation/views/widgets/best_seller_books_item.dart';
import 'package:flutter/material.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: BooksListItem(
              imageUrl: 'https://images.unsplash.com/photo-1614544048536-0d28caf77f41?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fG5vdmVsfGVufDB8fDB8fHww',
            ),
          );
        });
  }
}
