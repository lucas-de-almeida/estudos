import 'package:app_filmes/models/genre_model.dart';

abstract class GenresServices {
  Future<List<GenreModel>> getGenres();
}
