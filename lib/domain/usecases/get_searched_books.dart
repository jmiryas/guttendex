import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../core/error/failures.dart';
import '../../core/usescases/usecase.dart';
import '../entities/book_list_entity.dart';

class GetSearchedBooksUseCase implements UseCase<BookListEntity, Params> {
  @override
  Future<Either<Failure, BookListEntity>> call(Params params) {
    throw UnimplementedError();
  }
}

class Params extends Equatable {
  final String query;

  const Params({
    required this.query,
  });

  @override
  List<Object> get props => [query];
}
