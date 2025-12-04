/// RemoteDataSource is a small abstraction over the network/third-party
/// `books_finder` package. Implement concrete calls here and keep this class
/// small and testable. For now this is a placeholder to be implemented next.
class RemoteDataSource {
  RemoteDataSource();

  /// Search remote API for books. Returns a raw list of maps (or DTOs) which
  /// will be mapped to domain models by the repository implementation.
  Future<List<Map<String, dynamic>>> search(
    String query, {
    int page = 1,
  }) async {
    // Integrate with `books_finder` package here. Example:
    // final client = BooksFinderClient();
    // final rsp = await client.searchBooks(query, page: page);
    // return rsp.items.map((i) => i.toMap()).toList();
    throw UnimplementedError('Remote search not implemented yet');
  }

  Future<Map<String, dynamic>?> getDetails(String id) async {
    throw UnimplementedError('Remote details not implemented yet');
  }
}
