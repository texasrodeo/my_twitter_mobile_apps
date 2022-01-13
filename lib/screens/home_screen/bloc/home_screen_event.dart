part of 'home_screen_bloc.dart';

@freezed
abstract class HomeScreenEvent with _$HomeScreenEvent {
  const factory HomeScreenEvent.started() = _Started;
  const factory HomeScreenEvent.changeLikeStatus(LikeStatus currentLikeStatus, String postId) = _ChangeLikeStatus;
  const factory HomeScreenEvent.loadMore() = _LoadMore;
  const factory HomeScreenEvent.refresh() = _Refresh;
  const factory HomeScreenEvent.refreshPost(Post post, LikeStatus currentLikeStatus) = _RefreshPost;
}
