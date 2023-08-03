import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_event.freezed.dart';

@freezed
abstract class HomeEvent<T> with _$HomeEvent<T> {
  const factory HomeEvent.search(String SEARCH_KEYWORD) = Search;
  const factory HomeEvent.update(String TICKER, String NAME) = Update;
  const factory HomeEvent.tickerinfo(String TICKER) = Tickerinfo;
}
