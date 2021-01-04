import 'package:flutter/widgets.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_gad_2020/s5_movie_list_with_redux/models/index.dart';
import 'package:redux/src/store.dart';

class QualityContainer extends StatelessWidget {
  const QualityContainer({Key key, @required this.builder}) : super(key: key);

  final ViewModelBuilder<String> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, String>(
      converter: (Store<AppState> store) => store.state.quality,
      builder: builder,
    );
  }
}
