import 'package:app_filmes/models/movie_detail_model.dart';
import 'package:app_filmes/modules/movie_detail/movie_detail_controller.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class MovieDetailHeader extends StatelessWidget {
  final MovieDetailModel? movie;
  const MovieDetailHeader({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (movie != null) {
      return SizedBox(
        height: 278,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: movie!.urlImage.length,
          itemBuilder: (context, index) {
            final image = movie!.urlImage[index];
            return Padding(
              padding: EdgeInsets.all(2),
              child: FadeInImage.memoryNetwork(
                image: image,
                placeholder: kTransparentImage,
              ),
            );
          },
        ),
      );
    } else {
      return SizedBox.shrink();
    }
  }
}
