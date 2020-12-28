import 'package:flutter/material.dart';
import 'package:flutter_config/flutter_config.dart';

import 's6_unsplash_photos/main.dart' as app;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FlutterConfig.loadEnvVariables();

  app.main();
}
