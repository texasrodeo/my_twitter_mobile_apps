part of 'fullscreen_post_bloc.dart';

@freezed
class FullscreenPostState with _$FullscreenPostState{
  const factory FullscreenPostState.initial() = _Initial;
  const factory FullscreenPostState.showPost(Post post, String postString) = _ShowPost;
  const factory FullscreenPostState.errorLoading() = _ErrorLoading;
  const factory FullscreenPostState.unauthicated() = _Unauthicated;
}
