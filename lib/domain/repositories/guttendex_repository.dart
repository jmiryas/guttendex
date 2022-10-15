import 'package:dartz/dartz.dart';

import '../../core/error/failures.dart';
import '../entities/book_list_entity.dart';

abstract class GuttendexRepository {
  Future<Either<Failure, BookListEntity>> getBooks();
  Future<Either<Failure, BookListEntity>> getSearchedBooks(String query);
}
