import 'book_entity.dart';

class BookListEntity {
  late final int count;
  late final String? next;
  late final String? previous;
  late final List<BookEntity> results;

  BookListEntity({
    required this.count,
    required this.next,
    required this.previous,
    required this.results,
  });
}
