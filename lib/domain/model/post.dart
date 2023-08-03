import 'package:freezed_annotation/freezed_annotation.dart';

part 'post.freezed.dart';
part 'post.g.dart';

@freezed
class Post with _$Post {
  factory Post({
    required String TICKER,
    required String NAME,
    //String? TICKER,
    //String? NAME,
    // update(pvc) api repository
    double? COMPANY,
    double? VOLUME,
    double? NEWS,
  }) = _Post;

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);
}
