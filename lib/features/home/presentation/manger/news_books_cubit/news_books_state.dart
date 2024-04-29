part of 'news_books_cubit.dart';

@immutable
abstract class NewsBooksState {}

class NewsBooksInitial extends NewsBooksState {}
class NewsBooksLoading extends NewsBooksState {}
class NewsBooksFailure extends NewsBooksState {
  final String message;

  NewsBooksFailure({required this.message});
}
class NewsBooksSuccess extends NewsBooksState {
  final List<BookModels> data;

  NewsBooksSuccess({required this.data});
}

