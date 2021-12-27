part of 'home_screen_bloc.dart';


@freezed
abstract class HomeScreenState with _$HomeScreenState {
  const factory HomeScreenState.initial() = _Initial;
  const factory HomeScreenState.showPosts(List<Post> postsToShow, String postsToShowString) = _ShowPosts;
  const factory HomeScreenState.errorLoading() = _ErrorLoading;
}
