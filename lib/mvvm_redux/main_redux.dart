import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_twitter/models/post_model.dart';


part 'main_redux.freezed.dart';

@freezed
class AppState with _$AppState {
  factory AppState({
    List<PostModel>? postsToShow,
    String? imagesToShowString,
  }) = _AppState;

  AppState._();
}
