
part of 'addpost_screen_bloc.dart';

@freezed
abstract class AddPostScreenState with _$AddPostScreenState {
  const factory AddPostScreenState.initial() = _Initial;
  const factory AddPostScreenState.showScreen() = _ShowScreen;
  const factory AddPostScreenState.showScreenWithImage() = _ShowScreenWithImage;
  const factory AddPostScreenState.showSuccess() = _ShowSuccess;
  const factory AddPostScreenState.showImagePicker() = _ShowImagePicker;
  const factory AddPostScreenState.unauthicated() = _Unauthicated;
  const factory AddPostScreenState.errorLoading() = _ErrorLoading;
}
