import 'dart:convert';

import 'package:fss_ai_app/data/source/remote/board_api.dart';
import 'package:fss_ai_app/domain/model/post.dart';
import 'package:fss_ai_app/domain/repository/board_repository.dart';

class BoardRepositoryImpl implements BoardRepository {
  BoardApi api;

  BoardRepositoryImpl({required this.api});

  @override
  Future<List<Post>> search(String SEARCH_KEYWORD) async {
    final response = await api.search(SEARCH_KEYWORD);

    final String jsonData = response.body;
    // final Iterable json = jsonDecode(jsonData)['data']['dataset'];
    final Iterable json = jsonDecode(jsonData);
    //print(json);
    return json.map((e) => Post.fromJson(e)).toList();
  }

  @override
  Future tickerinfo(String TICKER) async {
    final response = await api.tickerinfo(TICKER);

    final String jsonData = response.body;
    final Iterable json = jsonDecode(jsonData);
    //print(json);
    return json;
  }

  @override
  //Future<List<Post>> update(String TICKER, String NAME) async {
  Future update(String TICKER, String NAME) async {
    //await api.update(TICKER, NAME);
    final response = await api.update(TICKER, NAME);

    final String jsonData = response.body;
    final Iterable json = jsonDecode(jsonData);
    //print(json);
    return json;
  }
}
