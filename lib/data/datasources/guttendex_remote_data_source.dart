import "package:http/http.dart" as http;

import '../models/book_list_model.dart';

abstract class GuttendexRemoteDataSource {
  Future<BookListModel> getBooks();
  Future<BookListModel> getSearchedBooks(String query);
}

class GuttendexRemoteDataSourceImplementation
    implements GuttendexRemoteDataSource {
  final http.Client client;

  GuttendexRemoteDataSourceImplementation({
    required this.client,
  });

  @override
  Future<BookListModel> getBooks() {
    throw UnimplementedError();
  }

  @override
  Future<BookListModel> getSearchedBooks(String query) {
    throw UnimplementedError();
  }
}
