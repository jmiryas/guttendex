import 'package:dartz/dartz.dart';

import '../../core/error/failures.dart';
import '../../domain/entities/book_list_entity.dart';
import '../../domain/repositories/guttendex_repository.dart';

class GuttendexRepositoryImplementation implements GuttendexRepository {
  @override
  Future<Either<Failure, BookListEntity>> getBooks() {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, BookListEntity>> getSearchedBooks(String query) {
    throw UnimplementedError();
  }
}
