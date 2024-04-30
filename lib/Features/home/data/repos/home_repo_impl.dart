import 'package:bookly/core/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../core/utils/api_service.dart';
import '../models/book_models/book_model.dart';
import 'home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  ApiService apiService;
  HomeRepoImpl(this.apiService);
  List<BookModels> books = [];

  @override
  Future<Either<Failure, List<BookModels>>> fetchNewsBooks() async {
    try {
      var data = await apiService.get(
          endPoints: 'volumes?Filtering=free-ebooks&q=subject:programming');
      for (var item in data['items']) {
        books.add(BookModels.fromJson(item));
      }
      return right(books);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }

      return left(ServerFailure(message: e.toString()));
    }
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModels>>> fetchFeatureBooks() async {
    try {
      var data = await apiService.get(
          endPoints: 'volumes?Filtering=free-ebooks&q=subject:sports');
      List<BookModels> books = [];
      for (var item in data['items']) {
        books.add(BookModels.fromJson(item));
      }
      return right(books);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }

      return left(ServerFailure(message: e.toString()));
    }
    throw UnimplementedError();
  }
}
