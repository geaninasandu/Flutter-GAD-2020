import 'package:flutter/material.dart';
import 'package:flutter_gad_2020/s6_unsplash_photos/actions/index.dart';
import 'package:flutter_gad_2020/s6_unsplash_photos/data/unsplash_api.dart';
import 'package:flutter_gad_2020/s6_unsplash_photos/epics/app_epics.dart';
import 'package:flutter_gad_2020/s6_unsplash_photos/models/index.dart';
import 'package:flutter_gad_2020/s6_unsplash_photos/presentation/home_page.dart';
import 'package:flutter_gad_2020/s6_unsplash_photos/reducer/reducer.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:http/http.dart';
import 'package:meta/meta.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';

void main() {
  final Client client = Client();
  final UnsplashApi unsplashApi = UnsplashApi(client: client);
  final AppEpics appEpics = AppEpics(unsplashApi: unsplashApi);
  final AppState initialState = AppState();
  final Store<AppState> store = Store<AppState>(
    reducer,
    initialState: initialState,
    middleware: <Middleware<AppState>>[
      EpicMiddleware<AppState>(appEpics.epics),
    ],
  );

  store.dispatch(GetPhotos.start(initialState.page));
  runApp(MyApp(store: store));
}

class MyApp extends StatelessWidget {
  const MyApp({Key key, @required this.store}) : super(key: key);

  final Store<AppState> store;

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        home: const HomePage(),
        theme: ThemeData(
          primaryColor: Colors.blueGrey[900],
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
      ),
    );
  }
}
