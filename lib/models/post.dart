import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:my_twitter/models/user.dart';

part 'post.freezed.dart';

enum LikeStatus{
  active,
  inactive,
}

@freezed
abstract class Post with _$Post {
  const factory Post({
    required String id,
    required User author,
    required String text,
    required String imageUrl,
    LikeStatus? likeStatus,
  }) = _Post;
}
