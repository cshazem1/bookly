import 'package:bloc/bloc.dart';

import '../../../data/models/book_models/book_model.dart';
import '../../../data/repos/home_repo.dart';

part 'feature_books_state.dart';

class FeatureBooksCubit extends Cubit<FeatureBooksState> {
  FeatureBooksCubit(this.homeRepo) : super(FeatureBooksInitial());
  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoading());
    var result = await homeRepo.fetchFeatureBooks();
    result.fold((failure) {
      emit(FeaturedBooksFailure(failure.message));
    }, (book) {
      emit(FeaturedBooksSuccess(book.cast<BookModels>()));
    });
  }
}


