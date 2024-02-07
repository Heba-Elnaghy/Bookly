import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/core/errors/failures.dart';
import 'package:flutter_application_1/features/home/data/models/book_model/book_model.dart';

abstract class HomeRepo {
  Future<Either<Falure, List<BookModel>>> fetchNewestBooks();
  Future<Either<Falure, List<BookModel>>> fetchFeaturedBooks();
  Future<Either<Falure, List<BookModel>>> fetchSimilarBooks(
      {required String category});
}
