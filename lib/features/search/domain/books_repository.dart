import 'book.dart';

abstract class BooksRepository {
  /// Search for books matching [query]. Implementations should support
  /// pagination via [page]. Returns a list of domain [Book] objects.
  Future<List<Book>> search(String query, {int page = 1});

  /// Get details for a single book by id.
  Future<Book?> getDetails(String id);

  /// Toggle favorite state for [book] and persist it.
  Future<void> toggleFavorite(Book book);

  /// Load persisted favorites.
  Future<List<Book>> favorites();
}
