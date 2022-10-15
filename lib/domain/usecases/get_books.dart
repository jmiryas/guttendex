import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../core/error/failures.dart';
import '../../core/usescases/usecase.dart';
import '../entities/book_list_entity.dart';

class GetBooksUseCase extends UseCase<BookListEntity, NoParams> {
  @override
  Future<Either<Failure, BookListEntity>> call(NoParams params) {
    throw UnimplementedError();
  }
}

class NoParams extends Equatable {
  @override
  List<Object> get props => [];
}
