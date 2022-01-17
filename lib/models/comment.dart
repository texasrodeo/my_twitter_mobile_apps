import 'package:my_twitter/models/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment.freezed.dart';

@freezed
abstract class Comment with _$Comment{
  const factory Comment({
    required String id,
    required User author,
    required String text,
  }) = _Comment;
}
