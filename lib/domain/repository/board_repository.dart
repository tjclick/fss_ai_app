import 'package:fss_ai_app/domain/model/post.dart';
//import 'package:fss_ai_app/domain/model/driver_info.dart';

abstract class BoardRepository {
  //Future<List<Post>> getPosts();
  Future<List<Post>> search(String SEARCH_KEYWORD);

  Future update(String TICKER, String NAME);

  Future tickerinfo(String TICKER);
}
