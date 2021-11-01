import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_model.freezed.dart';

enum LikeStatus{
  liked,
  notLiked,
}

@freezed
abstract class PostModel with _$PostModel {
  const factory PostModel({
    required String id,
    required String text,
    required String imageUrl,
    LikeStatus? likeStatus,
  }) = _PostModel;
}
