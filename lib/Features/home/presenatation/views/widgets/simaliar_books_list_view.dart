import 'package:bookly/Features/home/presenatation/manger/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly/Features/home/presenatation/views/widgets/custom_book_image.dart';
import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:bookly/core/widgets/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksScuess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .15,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: CustomBookImage(
                      imageUrl:
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZJ9ngr0BUEWhCu721acTiR7wn7uYZOXlyoQ&s',
                    ),
                  );
                }),
          );
        } else if (state is SimilarBooksFailure) {
          return CustomErrorWidget(errMessaage: state.errMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
