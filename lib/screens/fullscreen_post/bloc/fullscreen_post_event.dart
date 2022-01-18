part of 'fullscreen_post_bloc.dart';

@freezed
class FullscreenPostEvent with _$FullscreenPostEvent{
  const factory FullscreenPostEvent.started(Post post) = _Started;
  const factory FullscreenPostEvent.startedWithPostId(String postId) = _StartedWithPostId;
  const factory FullscreenPostEvent.changeLikeStatus(LikeStatus currentLikeStatus, String postId) = _ChangeLikeStatus;
  const factory FullscreenPostEvent.loadMoreComments() = _LoadMoreComments;

  const factory FullscreenPostEvent.addComment(String text) = _AddComment;
}
