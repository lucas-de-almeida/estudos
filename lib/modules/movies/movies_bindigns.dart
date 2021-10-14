import 'package:app_filmes/modules/movies/movies_controller.dart';
import 'package:app_filmes/repository/genres/genres_repository%20_impl.dart';
import 'package:app_filmes/repository/genres/genres_repository.dart';
import 'package:app_filmes/services/genres/genres_services.dart';
import 'package:app_filmes/services/genres/genres_services_impl.dart';
import 'package:get/get.dart';

class MoviesBindigns implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GenresRepository>(
        () => GenresRepositoryImpl(restClient: Get.find()));

    Get.lazyPut<GenresServices>(
        () => GenresServicesImpl(genresRepository: Get.find()));

    Get.lazyPut(() => MoviesController(
        authService: Get.find(),
        genresServices: Get.find(),
        moviesService: Get.find()));
  }
}
