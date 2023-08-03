import 'package:flutter/material.dart';
import 'package:fss_ai_app/domain/repository/board_repository.dart';
import 'package:fss_ai_app/presentation/home_event.dart';
import 'package:fss_ai_app/presentation/home_state.dart';
import 'package:get/get.dart';

class HomeViewModel with ChangeNotifier {
  final BoardRepository _repository;

  var _state = HomeState();
  HomeState get state => _state;

  HomeViewModel(this._repository) {
    //_getPosts();
    _search('');
  }

  // API로 받아온 데이터들을 조합해 다음페이지 arg 넘기기 위한 조합
  void onEvent(HomeEvent event) {
    event.when(
      search: _search,
      update: _update,
      tickerinfo: _tickerinfo,
    );
  }

  // "Detail" 버튼 클릭시 update, tickerinfo event 발생
  Future _update(String TICKER, String NAME) async {

    // update model + API 실행
    final retTicker = await _repository.update(TICKER, NAME);

    // 차량 상세 정보 API + model 실행
    final retDetail = await _repository.tickerinfo(TICKER);

    // GetX를 이용 페이지(/drivers)로 이동시 parameter 전달
    Get.toNamed("/drivers", arguments: {
      // PVC return API
      "TICKER": retTicker[0]["TICKER"],
      "NAME": retTicker[0]["NAME"],
      "COMPANY": retTicker[0]["COMPANY"],
      "NEWS": retTicker[0]["NEWS"],

      // tickerinfo API
      "VOLUME": retDetail[0]["VOLUME"],
      "ECONOMIC": retDetail[0]["ECONOMIC"],
      "MARKET": retDetail[0]["MARKET"],
    });
    //print(retDetail);
  }

  Future _search(String SEARCH_KEYWORD) async {
    _state = state.copyWith(isLoading: true);
    notifyListeners();

    final result = await _repository.search(SEARCH_KEYWORD);
    _state = state.copyWith(
      isLoading: false,
      posts: result,
    );
    notifyListeners();
  }

  Future _tickerinfo(String TICKER) async {
    await _repository.tickerinfo(TICKER);
    //await _getPosts();
  }
}
