import 'package:http/http.dart' as http;

class BoardApi {
  final http.Client _client;

  BoardApi({http.Client? client}) : _client = (client ?? http.Client());

  static const baseUrl = 'http://10.21.1.61:8000/api';
  // static const HUserID = 'VEVTVERSVlI=';
  // static const HUserKey = '20230110001003.74819453677458031764608059833657472235';

  Future<http.Response> search(String SEARCH_KEYWORD) async {
    // if (SEARCH_KEYWORD == '' || SEARCH_KEYWORD.length == 0)
    //   SEARCH_KEYWORD = '광주';

    final response = await _client.post(
      Uri.parse('$baseUrl/TodayPredictTickerList'),
      // headers: <String, String>{'USERID': '$HUserID', 'CRTFK': '$HUserKey'},
      body: <String, String>{
        'name': '$SEARCH_KEYWORD'
      },
    );
    return response;
  }
//구글 자동 로그인?
  Future<http.Response> update(String TICKER, String NAME) async {
    final response = await _client.post(
      Uri.parse('$baseUrl/TodayPredictTickerList'),
      // headers: <String, String>{'USERID': '$HUserID', 'CRTFK': '$HUserKey'},
      body: <String, String>{
          "ticker": '$TICKER'
      },
    );

    return response;
  }

  Future<http.Response> tickerinfo(String TICKER) async {
    final response = await _client.post(
      Uri.parse('$baseUrl/TodayPredictTickerList'),
      // headers: <String, String>{'USERID': '$HUserID', 'CRTFK': '$HUserKey'},
      body: <String, String>{
          "ticker": '$TICKER'
      },
    );

    return response;
  }
}
