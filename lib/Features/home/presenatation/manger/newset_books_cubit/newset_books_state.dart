part of 'newset_books_cubit.dart';

sealed class NewsetBooksState extends Equatable {
  const NewsetBooksState();

  @override
  List<Object> get props => [];
}

final class NewsetBooksInitial extends NewsetBooksState {}

final class NewsetBooksLoading extends NewsetBooksState {}

final class NewsetBooksScuess extends NewsetBooksState {
  final List<BookModel> books;

  const NewsetBooksScuess({required this.books});
}

final class NewsetBooksFailure extends NewsetBooksState {
  final String errMeassage;

  const NewsetBooksFailure({required this.errMeassage});
}
