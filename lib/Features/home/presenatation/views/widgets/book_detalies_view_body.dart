import 'package:bookly/Features/home/presenatation/views/widgets/books_details_section.dart';
import 'package:bookly/Features/home/presenatation/views/widgets/custom_book_detalis_app_bar.dart';
import 'package:bookly/Features/home/presenatation/views/widgets/simaliar_books_section.dart';
import 'package:flutter/material.dart';

class BookDetaliesViewBody extends StatelessWidget {
  const BookDetaliesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                CustomBookDetailsAppBar(),
                BookDetailSection(),
                Expanded(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
                SimalirBooksSection(),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
