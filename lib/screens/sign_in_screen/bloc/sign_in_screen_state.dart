part of 'sign_in_screen_bloc.dart';

@freezed
class SignInScreenState with _$SignInScreenState{
  const factory SignInScreenState.initial() = _Initial;
  const factory SignInScreenState.showScreen() = _ShowScreen;
  const factory SignInScreenState.showSuccess() = _ShowSuccess;
  const factory SignInScreenState.errorLoading() = _ErrorLoading;
}
