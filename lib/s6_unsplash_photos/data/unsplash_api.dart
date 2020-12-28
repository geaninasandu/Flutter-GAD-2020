import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_config/flutter_config.dart';
import 'package:flutter_gad_2020/s6_unsplash_photos/models/photo.dart';
import 'package:http/http.dart';
import 'package:meta/meta.dart';

class UnsplashApi {
  const UnsplashApi({@required Client client})
      : assert(client != null),
        _client = client;

  final Client _client;

  Future<List<Photo>> getPhotos(int page, String orientation, String query) async {
    final String clientId = await FlutterConfig.get('CLIENT_ID');

    final Uri url = Uri(
      scheme: 'https',
      host: 'api.unsplash.com',
      pathSegments: <String>[if (query != null) 'search', 'photos'],
      queryParameters: <String, String>{
        'page': '$page',
        'per_page': '10',
        'client_id': clientId,
        if (orientation != null) 'orientation': orientation,
        if (query != null) 'query': query,
      },
    );

    print(url);
    final Response response = await _client.get(url);

    final List<dynamic> data = (query == null) ? jsonDecode(response.body) : jsonDecode(response.body)['results'];

    return data.map((dynamic json) => Photo.fromJson(json)).toList();
  }
}
