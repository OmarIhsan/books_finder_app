class Book {
  final String id;
  final String title;
  final List<String> authors;
  final String? description;
  final String? thumbnail;

  const Book({
    required this.id,
    required this.title,
    this.authors = const [],
    this.description,
    this.thumbnail,
  });
}
