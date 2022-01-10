
part of 'sign_in_screen_bloc.dart';

@freezed
class SignInScreenEvent with _$SignInScreenEvent{
  const factory SignInScreenEvent.started() = _Started;
  const factory SignInScreenEvent.signIn(String email, String password) = _SignIn;
  const factory SignInScreenEvent.loading() = _Loading;
}
