import 'book_model.dart';

class BookListModel {
  late final int count;
  late final String? next;
  late final String? previous;
  late final List<BookModel> results;

  BookListModel({
    required this.count,
    required this.next,
    required this.previous,
    required this.results,
  });

  BookListModel.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    next = json['next'] ?? "";
    previous = json['previous'] ?? "";
    results = json['results'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['count'] = count;
    data['next'] = next ?? "";
    data['previous'] = previous ?? "";
    data['results'] = results;
    return data;
  }
}
