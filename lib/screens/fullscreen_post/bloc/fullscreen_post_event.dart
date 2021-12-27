part of 'fullscreen_post_bloc.dart';

@freezed
class FullscreenPostEvent with _$FullscreenPostEvent{
  const factory FullscreenPostEvent.started(Post post) = _Started;
  const factory FullscreenPostEvent.changeLikeStatus() = _ChangeLikeStatus;
  const factory FullscreenPostEvent.loadMoreComments() = _LoadMoreComments;
}
