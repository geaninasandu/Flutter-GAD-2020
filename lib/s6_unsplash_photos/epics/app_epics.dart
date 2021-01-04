import 'package:flutter_gad_2020/s6_unsplash_photos/actions/index.dart';
import 'package:flutter_gad_2020/s6_unsplash_photos/data/unsplash_api.dart';
import 'package:flutter_gad_2020/s6_unsplash_photos/models/index.dart';
import 'package:meta/meta.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';

class AppEpics {
  const AppEpics({@required UnsplashApi unsplashApi})
      : assert(unsplashApi != null),
        _unsplashApi = unsplashApi;

  final UnsplashApi _unsplashApi;

  Epic<AppState> get epics {
    return combineEpics(<Epic<AppState>>[
      TypedEpic<AppState, GetPhotosStart>(_getPhotosStart),
    ]);
  }

  Stream<dynamic> _getPhotosStart(Stream<GetPhotosStart> actions, EpicStore<AppState> store) {
    return actions
        .asyncMap((GetPhotosStart action) {
          return _unsplashApi.getPhotos(
            action.page,
            store.state.orientation,
            store.state.query,
          );
        })
        .map<dynamic>((List<Photo> photos) => GetPhotos.successful(photos))
        .onErrorReturnWith((dynamic error) => GetPhotos.error(error));
  }
}
