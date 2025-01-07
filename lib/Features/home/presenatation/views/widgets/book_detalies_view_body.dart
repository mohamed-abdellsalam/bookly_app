import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/presenatation/views/widgets/books_details_section.dart';
import 'package:bookly/Features/home/presenatation/views/widgets/custom_book_detalis_app_bar.dart';
import 'package:bookly/Features/home/presenatation/views/widgets/simaliar_books_section.dart';
import 'package:flutter/material.dart';

class BookDetaliesViewBody extends StatelessWidget {
  const BookDetaliesViewBody({
    super.key,
    required this.bookModel,
  });
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                const CustomBookDetailsAppBar(),
                BookDetailSection(
                  bookModel: bookModel,
                ),
                const Expanded(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
                const SimalirBooksSection(),
                const SizedBox(
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
