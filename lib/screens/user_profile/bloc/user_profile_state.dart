

part of 'user_profile_bloc.dart';

@freezed
abstract class UserProfileState with _$UserProfileState{
  const factory UserProfileState.initial() = _Initial;
  const factory UserProfileState.showProfile(User user ,List<Post> postsToShow, String postsToShowString) = _ShowProfile;
  const factory UserProfileState.errorLoading() = _ErrorLoading;
  const factory UserProfileState.unauthicated() = _Unauthicated;
}
