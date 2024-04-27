import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl extends HomeRepo{
  ApiService apiService;
  HomeRepoImpl(this.apiService);


  @override
  Future<Either<Failure, List<BookModels>>> fetchFeatureBooks() {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModels>>> fetchNewsBooks() async {
    try {
      var data= await apiService.get(endPoints: 'volumes?Filtering=free-ebooks&q=subject:programme');
      List<BookModels>books=[];
      for(var item in data['items']){
        books.add(BookModels.fromJson(item));
        return right(books);

      }
    } on Exception catch (e) {
      return left(ServerFailure());}

    throw UnimplementedError();
  }


}