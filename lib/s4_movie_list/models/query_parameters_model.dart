import '../enums/genre.dart';

class QueryParameters {
  QueryParameters() {
    page = 1;
    limit = 10;
    genres = <Genre>[];
  }

  List<Genre> genres;
  int limit, page;

  @override
  String toString() {
    return 'QueryParameters{genres: $genres, limit: $limit, page: $page}';
  }
}
