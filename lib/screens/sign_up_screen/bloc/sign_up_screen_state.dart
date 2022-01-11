
part of 'sign_up_screen_bloc.dart';

@freezed
class SignUpScreenState with _$SignUpScreenState{
  const factory SignUpScreenState.initial() = _Initial;
  const factory SignUpScreenState.showScreen() = _ShowScreen;
  const factory SignUpScreenState.showSuccess() = _ShowSuccess;
  const factory SignUpScreenState.errorLoading(String errorCode) = _ErrorLoading;
  const factory SignUpScreenState.signingUpInProgress() = _SigningUpInProgress;
}
