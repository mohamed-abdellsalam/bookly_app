import 'package:bookly/Features/home/presenatation/manger/newset_books_cubit/newset_books_cubit.dart';
import 'package:bookly/Features/home/presenatation/views/widgets/best_seller_item_view.dart';
import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:bookly/core/widgets/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsetBooksCubit, NewsetBooksState>(
      builder: (context, state) {
        if (state is NewsetBooksScuess) {
          return ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: BookListViewItem(
                    bookModel: state.books[index],
                  ),
                );
              });
        } else if (state is NewsetBooksFailure) {
          return Center(
            child: CustomErrorWidget(errMessaage: state.errMeassage),
          );
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
