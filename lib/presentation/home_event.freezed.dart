// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeEventTearOff {
  const _$HomeEventTearOff();

  Search<T> search<T>(String SEARCH_KEYWORD) {
    return Search<T>(
      SEARCH_KEYWORD,
    );
  }

  Update<T> update<T>(String TICKER, String NAME) {
    return Update<T>(
      TICKER,
      NAME,
    );
  }

  Tickerinfo<T> tickerinfo<T>(String TICKER) {
    return Tickerinfo<T>(
      TICKER,
    );
  }
}

/// @nodoc
const $HomeEvent = _$HomeEventTearOff();

/// @nodoc
mixin _$HomeEvent<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String SEARCH_KEYWORD) search,
    required TResult Function(String TICKER, String NAME) update,
    required TResult Function(String TICKER) tickerinfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String SEARCH_KEYWORD)? search,
    TResult Function(String TICKER, String NAME)? update,
    TResult Function(String TICKER)? tickerinfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String SEARCH_KEYWORD)? search,
    TResult Function(String TICKER, String NAME)? update,
    TResult Function(String TICKER)? tickerinfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Search<T> value) search,
    required TResult Function(Update<T> value) update,
    required TResult Function(Tickerinfo<T> value) tickerinfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Search<T> value)? search,
    TResult Function(Update<T> value)? update,
    TResult Function(Tickerinfo<T> value)? tickerinfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Search<T> value)? search,
    TResult Function(Update<T> value)? update,
    TResult Function(Tickerinfo<T> value)? tickerinfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<T, $Res> {
  factory $HomeEventCopyWith(
          HomeEvent<T> value, $Res Function(HomeEvent<T>) then) =
      _$HomeEventCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<T, $Res> implements $HomeEventCopyWith<T, $Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  final HomeEvent<T> _value;
  // ignore: unused_field
  final $Res Function(HomeEvent<T>) _then;
}

/// @nodoc
abstract class $SearchCopyWith<T, $Res> {
  factory $SearchCopyWith(Search<T> value, $Res Function(Search<T>) then) =
      _$SearchCopyWithImpl<T, $Res>;
  $Res call({String SEARCH_KEYWORD});
}

/// @nodoc
class _$SearchCopyWithImpl<T, $Res> extends _$HomeEventCopyWithImpl<T, $Res>
    implements $SearchCopyWith<T, $Res> {
  _$SearchCopyWithImpl(Search<T> _value, $Res Function(Search<T>) _then)
      : super(_value, (v) => _then(v as Search<T>));

  @override
  Search<T> get _value => super._value as Search<T>;

  @override
  $Res call({
    Object? SEARCH_KEYWORD = freezed,
  }) {
    return _then(Search<T>(
      SEARCH_KEYWORD == freezed
          ? _value.SEARCH_KEYWORD
          : SEARCH_KEYWORD // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Search<T> implements Search<T> {
  const _$Search(this.SEARCH_KEYWORD);

  @override
  final String SEARCH_KEYWORD;

  @override
  String toString() {
    return 'HomeEvent<$T>.search(SEARCH_KEYWORD: $SEARCH_KEYWORD)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Search<T> &&
            const DeepCollectionEquality()
                .equals(other.SEARCH_KEYWORD, SEARCH_KEYWORD));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(SEARCH_KEYWORD));

  @JsonKey(ignore: true)
  @override
  $SearchCopyWith<T, Search<T>> get copyWith =>
      _$SearchCopyWithImpl<T, Search<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String SEARCH_KEYWORD) search,
    required TResult Function(String TICKER, String NAME) update,
    required TResult Function(String TICKER) tickerinfo,
  }) {
    return search(SEARCH_KEYWORD);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String SEARCH_KEYWORD)? search,
    TResult Function(String TICKER, String NAME)? update,
    TResult Function(String TICKER)? tickerinfo,
  }) {
    return search?.call(SEARCH_KEYWORD);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String SEARCH_KEYWORD)? search,
    TResult Function(String TICKER, String NAME)? update,
    TResult Function(String TICKER)? tickerinfo,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(SEARCH_KEYWORD);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Search<T> value) search,
    required TResult Function(Update<T> value) update,
    required TResult Function(Tickerinfo<T> value) tickerinfo,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Search<T> value)? search,
    TResult Function(Update<T> value)? update,
    TResult Function(Tickerinfo<T> value)? tickerinfo,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Search<T> value)? search,
    TResult Function(Update<T> value)? update,
    TResult Function(Tickerinfo<T> value)? tickerinfo,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class Search<T> implements HomeEvent<T> {
  const factory Search(String SEARCH_KEYWORD) = _$Search<T>;

  String get SEARCH_KEYWORD;
  @JsonKey(ignore: true)
  $SearchCopyWith<T, Search<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateCopyWith<T, $Res> {
  factory $UpdateCopyWith(Update<T> value, $Res Function(Update<T>) then) =
      _$UpdateCopyWithImpl<T, $Res>;
  $Res call({String TICKER, String NAME});
}

/// @nodoc
class _$UpdateCopyWithImpl<T, $Res> extends _$HomeEventCopyWithImpl<T, $Res>
    implements $UpdateCopyWith<T, $Res> {
  _$UpdateCopyWithImpl(Update<T> _value, $Res Function(Update<T>) _then)
      : super(_value, (v) => _then(v as Update<T>));

  @override
  Update<T> get _value => super._value as Update<T>;

  @override
  $Res call({
    Object? TICKER = freezed,
    Object? NAME = freezed,
  }) {
    return _then(Update<T>(
      TICKER == freezed
          ? _value.TICKER
          : TICKER // ignore: cast_nullable_to_non_nullable
              as String,
      NAME == freezed
          ? _value.NAME
          : NAME // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Update<T> implements Update<T> {
  const _$Update(this.TICKER, this.NAME);

  @override
  final String TICKER;
  @override
  final String NAME;

  @override
  String toString() {
    return 'HomeEvent<$T>.update(TICKER: $TICKER, NAME: $NAME)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Update<T> &&
            const DeepCollectionEquality().equals(other.TICKER, TICKER) &&
            const DeepCollectionEquality().equals(other.NAME, NAME));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(TICKER),
      const DeepCollectionEquality().hash(NAME));

  @JsonKey(ignore: true)
  @override
  $UpdateCopyWith<T, Update<T>> get copyWith =>
      _$UpdateCopyWithImpl<T, Update<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String SEARCH_KEYWORD) search,
    required TResult Function(String TICKER, String NAME) update,
    required TResult Function(String TICKER) tickerinfo,
  }) {
    return update(TICKER, NAME);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String SEARCH_KEYWORD)? search,
    TResult Function(String TICKER, String NAME)? update,
    TResult Function(String TICKER)? tickerinfo,
  }) {
    return update?.call(TICKER, NAME);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String SEARCH_KEYWORD)? search,
    TResult Function(String TICKER, String NAME)? update,
    TResult Function(String TICKER)? tickerinfo,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(TICKER, NAME);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Search<T> value) search,
    required TResult Function(Update<T> value) update,
    required TResult Function(Tickerinfo<T> value) tickerinfo,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Search<T> value)? search,
    TResult Function(Update<T> value)? update,
    TResult Function(Tickerinfo<T> value)? tickerinfo,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Search<T> value)? search,
    TResult Function(Update<T> value)? update,
    TResult Function(Tickerinfo<T> value)? tickerinfo,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class Update<T> implements HomeEvent<T> {
  const factory Update(String TICKER, String NAME) = _$Update<T>;

  String get TICKER;
  String get NAME;
  @JsonKey(ignore: true)
  $UpdateCopyWith<T, Update<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TickerinfoCopyWith<T, $Res> {
  factory $TickerinfoCopyWith(
          Tickerinfo<T> value, $Res Function(Tickerinfo<T>) then) =
      _$TickerinfoCopyWithImpl<T, $Res>;
  $Res call({String TICKER});
}

/// @nodoc
class _$TickerinfoCopyWithImpl<T, $Res> extends _$HomeEventCopyWithImpl<T, $Res>
    implements $TickerinfoCopyWith<T, $Res> {
  _$TickerinfoCopyWithImpl(
      Tickerinfo<T> _value, $Res Function(Tickerinfo<T>) _then)
      : super(_value, (v) => _then(v as Tickerinfo<T>));

  @override
  Tickerinfo<T> get _value => super._value as Tickerinfo<T>;

  @override
  $Res call({
    Object? TICKER = freezed,
  }) {
    return _then(Tickerinfo<T>(
      TICKER == freezed
          ? _value.TICKER
          : TICKER // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Tickerinfo<T> implements Tickerinfo<T> {
  const _$Tickerinfo(this.TICKER);

  @override
  final String TICKER;

  @override
  String toString() {
    return 'HomeEvent<$T>.tickerinfo(TICKER: $TICKER)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Tickerinfo<T> &&
            const DeepCollectionEquality().equals(other.TICKER, TICKER));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(TICKER));

  @JsonKey(ignore: true)
  @override
  $TickerinfoCopyWith<T, Tickerinfo<T>> get copyWith =>
      _$TickerinfoCopyWithImpl<T, Tickerinfo<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String SEARCH_KEYWORD) search,
    required TResult Function(String TICKER, String NAME) update,
    required TResult Function(String TICKER) tickerinfo,
  }) {
    return tickerinfo(TICKER);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String SEARCH_KEYWORD)? search,
    TResult Function(String TICKER, String NAME)? update,
    TResult Function(String TICKER)? tickerinfo,
  }) {
    return tickerinfo?.call(TICKER);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String SEARCH_KEYWORD)? search,
    TResult Function(String TICKER, String NAME)? update,
    TResult Function(String TICKER)? tickerinfo,
    required TResult orElse(),
  }) {
    if (tickerinfo != null) {
      return tickerinfo(TICKER);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Search<T> value) search,
    required TResult Function(Update<T> value) update,
    required TResult Function(Tickerinfo<T> value) tickerinfo,
  }) {
    return tickerinfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Search<T> value)? search,
    TResult Function(Update<T> value)? update,
    TResult Function(Tickerinfo<T> value)? tickerinfo,
  }) {
    return tickerinfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Search<T> value)? search,
    TResult Function(Update<T> value)? update,
    TResult Function(Tickerinfo<T> value)? tickerinfo,
    required TResult orElse(),
  }) {
    if (tickerinfo != null) {
      return tickerinfo(this);
    }
    return orElse();
  }
}

abstract class Tickerinfo<T> implements HomeEvent<T> {
  const factory Tickerinfo(String TICKER) = _$Tickerinfo<T>;

  String get TICKER;
  @JsonKey(ignore: true)
  $TickerinfoCopyWith<T, Tickerinfo<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
