class BookModel {
  BookModel({
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

  BookModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    authors =
        List.from(json['authors']).map((e) => Authors.fromJson(e)).toList();
    translators = List.castFrom<dynamic, dynamic>(json['translators']);
    subjects = List.castFrom<dynamic, String>(json['subjects']);
    bookshelves = List.castFrom<dynamic, String>(json['bookshelves']);
    languages = List.castFrom<dynamic, String>(json['languages']);
    copyright = json['copyright'];
    mediaType = json['media_type'];
    downloadCount = json['download_count'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['authors'] = authors.map((e) => e.toJson()).toList();
    data['translators'] = translators;
    data['subjects'] = subjects;
    data['bookshelves'] = bookshelves;
    data['languages'] = languages;
    data['copyright'] = copyright;
    data['media_type'] = mediaType;
    data['download_count'] = downloadCount;
    return data;
  }
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
