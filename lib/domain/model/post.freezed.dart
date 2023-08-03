// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Post _$PostFromJson(Map<String, dynamic> json) {
  return _Post.fromJson(json);
}

/// @nodoc
class _$PostTearOff {
  const _$PostTearOff();

  _Post call(
      {required String TICKER,
      required String NAME,
      double? COMPANY,
      double? VOLUME,
      double? NEWS}) {
    return _Post(
      TICKER: TICKER,
      NAME: NAME,
      COMPANY: COMPANY,
      VOLUME: VOLUME,
      NEWS: NEWS,
    );
  }

  Post fromJson(Map<String, Object?> json) {
    return Post.fromJson(json);
  }
}

/// @nodoc
const $Post = _$PostTearOff();

/// @nodoc
mixin _$Post {
  String get TICKER => throw _privateConstructorUsedError;
  String get NAME => throw _privateConstructorUsedError; //String? TICKER,
//String? NAME,
// update(pvc) api repository
  double? get COMPANY => throw _privateConstructorUsedError;
  double? get VOLUME => throw _privateConstructorUsedError;
  double? get NEWS => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostCopyWith<Post> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostCopyWith<$Res> {
  factory $PostCopyWith(Post value, $Res Function(Post) then) =
      _$PostCopyWithImpl<$Res>;
  $Res call(
      {String TICKER,
      String NAME,
      double? COMPANY,
      double? VOLUME,
      double? NEWS});
}

/// @nodoc
class _$PostCopyWithImpl<$Res> implements $PostCopyWith<$Res> {
  _$PostCopyWithImpl(this._value, this._then);

  final Post _value;
  // ignore: unused_field
  final $Res Function(Post) _then;

  @override
  $Res call({
    Object? TICKER = freezed,
    Object? NAME = freezed,
    Object? COMPANY = freezed,
    Object? VOLUME = freezed,
    Object? NEWS = freezed,
  }) {
    return _then(_value.copyWith(
      TICKER: TICKER == freezed
          ? _value.TICKER
          : TICKER // ignore: cast_nullable_to_non_nullable
              as String,
      NAME: NAME == freezed
          ? _value.NAME
          : NAME // ignore: cast_nullable_to_non_nullable
              as String,
      COMPANY: COMPANY == freezed
          ? _value.COMPANY
          : COMPANY // ignore: cast_nullable_to_non_nullable
              as double?,
      VOLUME: VOLUME == freezed
          ? _value.VOLUME
          : VOLUME // ignore: cast_nullable_to_non_nullable
              as double?,
      NEWS: NEWS == freezed
          ? _value.NEWS
          : NEWS // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
abstract class _$PostCopyWith<$Res> implements $PostCopyWith<$Res> {
  factory _$PostCopyWith(_Post value, $Res Function(_Post) then) =
      __$PostCopyWithImpl<$Res>;
  @override
  $Res call(
      {String TICKER,
      String NAME,
      double? COMPANY,
      double? VOLUME,
      double? NEWS});
}

/// @nodoc
class __$PostCopyWithImpl<$Res> extends _$PostCopyWithImpl<$Res>
    implements _$PostCopyWith<$Res> {
  __$PostCopyWithImpl(_Post _value, $Res Function(_Post) _then)
      : super(_value, (v) => _then(v as _Post));

  @override
  _Post get _value => super._value as _Post;

  @override
  $Res call({
    Object? TICKER = freezed,
    Object? NAME = freezed,
    Object? COMPANY = freezed,
    Object? VOLUME = freezed,
    Object? NEWS = freezed,
  }) {
    return _then(_Post(
      TICKER: TICKER == freezed
          ? _value.TICKER
          : TICKER // ignore: cast_nullable_to_non_nullable
              as String,
      NAME: NAME == freezed
          ? _value.NAME
          : NAME // ignore: cast_nullable_to_non_nullable
              as String,
      COMPANY: COMPANY == freezed
          ? _value.COMPANY
          : COMPANY // ignore: cast_nullable_to_non_nullable
              as double?,
      VOLUME: VOLUME == freezed
          ? _value.VOLUME
          : VOLUME // ignore: cast_nullable_to_non_nullable
              as double?,
      NEWS: NEWS == freezed
          ? _value.NEWS
          : NEWS // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Post implements _Post {
  _$_Post(
      {required this.TICKER,
      required this.NAME,
      this.COMPANY,
      this.VOLUME,
      this.NEWS});

  factory _$_Post.fromJson(Map<String, dynamic> json) => _$$_PostFromJson(json);

  @override
  final String TICKER;
  @override
  final String NAME;
  @override //String? TICKER,
//String? NAME,
// update(pvc) api repository
  final double? COMPANY;
  @override
  final double? VOLUME;
  @override
  final double? NEWS;

  @override
  String toString() {
    return 'Post(TICKER: $TICKER, NAME: $NAME, COMPANY: $COMPANY, VOLUME: $VOLUME, NEWS: $NEWS)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Post &&
            const DeepCollectionEquality().equals(other.TICKER, TICKER) &&
            const DeepCollectionEquality().equals(other.NAME, NAME) &&
            const DeepCollectionEquality().equals(other.COMPANY, COMPANY) &&
            const DeepCollectionEquality().equals(other.VOLUME, VOLUME) &&
            const DeepCollectionEquality().equals(other.NEWS, NEWS));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(TICKER),
      const DeepCollectionEquality().hash(NAME),
      const DeepCollectionEquality().hash(COMPANY),
      const DeepCollectionEquality().hash(VOLUME),
      const DeepCollectionEquality().hash(NEWS));

  @JsonKey(ignore: true)
  @override
  _$PostCopyWith<_Post> get copyWith =>
      __$PostCopyWithImpl<_Post>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostToJson(this);
  }
}

abstract class _Post implements Post {
  factory _Post(
      {required String TICKER,
      required String NAME,
      double? COMPANY,
      double? VOLUME,
      double? NEWS}) = _$_Post;

  factory _Post.fromJson(Map<String, dynamic> json) = _$_Post.fromJson;

  @override
  String get TICKER;
  @override
  String get NAME;
  @override //String? TICKER,
//String? NAME,
// update(pvc) api repository
  double? get COMPANY;
  @override
  double? get VOLUME;
  @override
  double? get NEWS;
  @override
  @JsonKey(ignore: true)
  _$PostCopyWith<_Post> get copyWith => throw _privateConstructorUsedError;
}
