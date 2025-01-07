import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/presenatation/manger/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly/Features/home/presenatation/views/widgets/book_detalies_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetaliesView extends StatefulWidget {
  const BookDetaliesView({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  State<BookDetaliesView> createState() => _BookDetaliesViewState();
}

class _BookDetaliesViewState extends State<BookDetaliesView> {
  @override
  void initState() {
    BlocProvider.of<SimilarBooksCubit>(context).fetchSimaliarBooks(
        category: widget.bookModel.volumeInfo.categories![0]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: BookDetaliesViewBody(),
      ),
    );
  }
}
