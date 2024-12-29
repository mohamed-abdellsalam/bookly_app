import 'package:bookly/Features/home/presenatation/views/widgets/book_detalies_view_body.dart';
import 'package:flutter/material.dart';

class BookDetaliesView extends StatelessWidget {
  const BookDetaliesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: BookDetaliesViewBody(),
      ),
    );
  }
}
