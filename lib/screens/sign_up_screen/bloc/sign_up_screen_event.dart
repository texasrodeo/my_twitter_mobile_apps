
part of 'sign_up_screen_bloc.dart';

@freezed
class SignUpScreenEvent with _$SignUpScreenEvent{
  const factory SignUpScreenEvent.started() = _Started;
  const factory SignUpScreenEvent.signUp(String email, String password, String username) = _SignUp;
}
