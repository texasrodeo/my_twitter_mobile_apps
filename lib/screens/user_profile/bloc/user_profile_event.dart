part of 'user_profile_bloc.dart';

@freezed
abstract class UserProfileEvent with _$UserProfileEvent{
  const factory UserProfileEvent.started(User? user) = _Started;
  const factory UserProfileEvent.changeLikeStatus(LikeStatus currentLikeStatus, String postId) = _ChangeLikeStatus;
  const factory UserProfileEvent.signOut() = _SignOut;
  const factory UserProfileEvent.loadMore() = _LoadMore;
}
