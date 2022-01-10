
part of 'addpost_screen_bloc.dart';

@freezed
abstract class AddPostScreenEvent with _$AddPostScreenEvent {
  const factory AddPostScreenEvent.started() = _Started;
  const factory AddPostScreenEvent.send(String text) = _Send;
  const factory AddPostScreenEvent.chooseImage() = _ChooseImage;
  const factory AddPostScreenEvent.imageChosen() = _ImageChosen;
  const factory AddPostScreenEvent.setLoading() = _SetLoading;
}
