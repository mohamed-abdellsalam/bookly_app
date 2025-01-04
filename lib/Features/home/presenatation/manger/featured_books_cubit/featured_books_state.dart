part of 'featured_books_cubit.dart';

sealed class FeaturedBooksState extends Equatable {
  const FeaturedBooksState();

  @override
  List<Object> get props => [];
}

final class FeaturedBooksInitial extends FeaturedBooksState {}

final class FeaturedBooksLoading extends FeaturedBooksState {}

final class FeaturedBooksScuess extends FeaturedBooksState {
  final List<BookModel> book;

  const FeaturedBooksScuess(this.book);
}

final class FeaturedBooksFailure extends FeaturedBooksState {
  final String errMeassage;

  const FeaturedBooksFailure({required this.errMeassage});
}
