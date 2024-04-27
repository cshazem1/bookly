import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';
import '../../../../core/errors/failures.dart';

abstract class HomeRepo{
Future<Either<Failure,List<BookModels>>> fetchNewsBooks();
Future<Either<Failure,List<BookModels>>>fetchFeatureBooks();
}