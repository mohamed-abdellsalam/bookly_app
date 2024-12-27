import 'package:bookly/Features/home/presenatation/views/widgets/book_list_view.dart';
import 'package:bookly/Features/home/presenatation/views/widgets/custom_app_bar.dart';
import 'package:bookly/core/utils/styls.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          BooksListView(),
          SizedBox(
            height: 50,
          ),
          Text(
            'Best Seller',
            style: Styls.titleMedium,
          )
        ],
      ),
    );
  }
}
