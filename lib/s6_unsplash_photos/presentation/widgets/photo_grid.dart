import 'package:flutter/material.dart';
import 'package:flutter_gad_2020/s6_unsplash_photos/models/index.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class PhotoGrid extends StatelessWidget {
  const PhotoGrid({Key key, @required this.photos}) : super(key: key);

  final List<Photo> photos;

  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.countBuilder(
      padding: const EdgeInsets.all(8.0).copyWith(bottom: 56.0),
      itemCount: photos.length,
      crossAxisCount: 2,
      mainAxisSpacing: 4.0,
      crossAxisSpacing: 4.0,
      staggeredTileBuilder: (int index) => StaggeredTile.count(1, index.isEven ? 2 : 1),
      itemBuilder: (BuildContext context, int index) {
        final Photo photo = photos[index];

        return Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(photo.urls.regular),
              fit: BoxFit.cover,
            ),
          ),
        );
      },
    );
  }
}
