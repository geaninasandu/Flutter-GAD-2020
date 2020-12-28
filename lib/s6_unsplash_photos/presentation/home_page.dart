import 'package:flutter/material.dart';
import 'package:flutter_gad_2020/s6_unsplash_photos/actions/get_photos.dart';
import 'package:flutter_gad_2020/s6_unsplash_photos/actions/set_orientation.dart';
import 'package:flutter_gad_2020/s6_unsplash_photos/actions/set_query.dart';
import 'package:flutter_gad_2020/s6_unsplash_photos/containers/is_loading_container.dart';
import 'package:flutter_gad_2020/s6_unsplash_photos/containers/orientation_container.dart';
import 'package:flutter_gad_2020/s6_unsplash_photos/containers/photos_container.dart';
import 'package:flutter_gad_2020/s6_unsplash_photos/models/app_state.dart';
import 'package:flutter_gad_2020/s6_unsplash_photos/models/photo.dart';
import 'package:flutter_gad_2020/s6_unsplash_photos/presentation/widgets/photo_grid.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Unsplash Photos'),
        centerTitle: true,
      ),
      body: IsLoadingContainer(
        builder: (BuildContext context, bool isLoading) {
          return Builder(
            builder: (BuildContext context) {
              if (isLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }

              return Column(
                children: <Widget>[
                  OrientationContainer(builder: (BuildContext context, String orientation) {
                    return DropdownButton<String>(
                        value: orientation,
                        hint: const Text('All'),
                        onChanged: (String value) {
                          StoreProvider.of<AppState>(context)
                            ..dispatch(SetOrientation(value))
                            ..dispatch(const GetPhotos.start(1));
                        },
                        items: <String>[null, 'landscape', 'portrait', 'squarish'].map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value ?? 'All'),
                          );
                        }).toList());
                  }),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextField(
                      decoration: const InputDecoration(
                        hintText: 'Search photo...',
                        suffix: Icon(Icons.search),
                      ),
                      onSubmitted: (String value) {
                        StoreProvider.of<AppState>(context).dispatch(SetQuery(value));
                        StoreProvider.of<AppState>(context).dispatch(const GetPhotos.start(1));
                      },
                    ),
                  ),
                  Expanded(
                    child: PhotosContainer(
                      builder: (BuildContext context, List<Photo> photos) => PhotoGrid(photos: photos),
                    ),
                  ),
                  FlatButton(
                    child: const Text('Load more'),
                    onPressed: () {
                      final Store<AppState> store = StoreProvider.of<AppState>(context);
                      store.dispatch(GetPhotos.start(store.state.page));
                    },
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
