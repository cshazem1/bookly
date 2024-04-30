import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';

import '../../../data/models/book_models/book_model.dart';

part 'news_books_state.dart';

class NewsBooksCubit extends Cubit<NewsBooksState> {

  NewsBooksCubit(this.homeRepo) : super(NewsBooksInitial());
  final HomeRepo homeRepo;
  Future<void>fetchNewsBooks()async {
    emit(NewsBooksInitial());

    var result=await homeRepo.fetchNewsBooks();
    result.fold((failure) {
      emit(NewsBooksFailure(message: failure.message));
    }
    , (books) {
          emit(NewsBooksSuccess(data: books as List<BookModels>));

        });
  }
}
