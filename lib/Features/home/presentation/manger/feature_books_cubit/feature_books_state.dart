part of 'feature_books_cubit.dart';

abstract class FeatureBooksState {}

class FeatureBooksInitial extends FeatureBooksState {}
class FeaturedBooksInitial extends FeatureBooksState {}

class FeaturedBooksLoading extends FeatureBooksState {}

class FeaturedBooksFailure extends FeatureBooksState {
  final String errMessage;

   FeaturedBooksFailure(this.errMessage);
}

class FeaturedBooksSuccess extends FeatureBooksState {
  final List<BookModels> books;

   FeaturedBooksSuccess(this.books);
}