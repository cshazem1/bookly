part of 'featured_books_cubit.dart';

abstract class FeaturedBooksState {
  const FeaturedBooksState();

}

class FeaturedBooksInitial extends FeaturedBooksState {}
class FeaturedBooksLoading extends FeaturedBooksState {}
class FeaturedBooksSuccess extends FeaturedBooksState {
  final List<BookModels>data;

const  FeaturedBooksSuccess(this.data);
}
class FeaturedBooksFailure extends FeaturedBooksState {
  final String message;

const  FeaturedBooksFailure({required this.message});

}
