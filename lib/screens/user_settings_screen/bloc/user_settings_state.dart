
part of 'user_settings_bloc.dart';

@freezed
abstract class UserSettingsScreenState with _$UserSettingsScreenState {
  const factory UserSettingsScreenState.initial() = _Initial;
  const factory UserSettingsScreenState.showScreen() = _ShowScreen;
  const factory UserSettingsScreenState.showScreenWithImage() = _ShowScreenWithImage;
  const factory UserSettingsScreenState.showSuccess() = _ShowSuccess;
  const factory UserSettingsScreenState.showImagePicker() = _ShowImagePicker;
  const factory UserSettingsScreenState.errorLoading() = _ErrorLoading;
}
