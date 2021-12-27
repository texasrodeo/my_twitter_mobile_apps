
part of 'user_settings_bloc.dart';

@freezed
abstract class UserSettingsScreenEvent with _$UserSettingsScreenEvent {
  const factory UserSettingsScreenEvent.started() = _Started;
  const factory UserSettingsScreenEvent.send(String username) = _Send;
  const factory UserSettingsScreenEvent.chooseImage() = _ChooseImage;
  const factory UserSettingsScreenEvent.imageChosen() = _ImageChosen;
}
