class BookEntity {
  late final int id;
  late final String title;
  late final List<Authors> authors;
  late final List<dynamic> translators;
  late final List<String> subjects;
  late final List<String> bookshelves;
  late final List<String> languages;
  late final bool copyright;
  late final String mediaType;
  late final int downloadCount;

  BookEntity({
    required this.id,
    required this.title,
    required this.authors,
    required this.translators,
    required this.subjects,
    required this.bookshelves,
    required this.languages,
    required this.copyright,
    required this.mediaType,
    required this.downloadCount,
  });
}

class Authors {
  Authors({
    required this.name,
    required this.birthYear,
    required this.deathYear,
  });
  late final String name;
  late final int birthYear;
  late final int deathYear;

  Authors.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    birthYear = json['birth_year'];
    deathYear = json['death_year'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['birth_year'] = birthYear;
    data['death_year'] = deathYear;
    return data;
  }
}
