

import 'package:bookly/core/errors/failures.dart';
import 'package:dartz/dartz.dart';

import '../models/book_models/book_model.dart';

abstract class HomeRepo{
Future<Either<Failure,List<BookModels>>> fetchNewsBooks();
Future<Either<Failure,List<BookModels>>>fetchFeatureBooks();
}