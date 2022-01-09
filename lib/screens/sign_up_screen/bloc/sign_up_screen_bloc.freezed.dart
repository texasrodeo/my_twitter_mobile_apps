// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sign_up_screen_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SignUpScreenEventTearOff {
  const _$SignUpScreenEventTearOff();

  _Started started() {
    return const _Started();
  }

  _SignUp signUp(String email, String password, String username) {
    return _SignUp(
      email,
      password,
      username,
    );
  }
}

/// @nodoc
const $SignUpScreenEvent = _$SignUpScreenEventTearOff();

/// @nodoc
mixin _$SignUpScreenEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password, String username)
        signUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password, String username)? signUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password, String username)? signUp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SignUp value) signUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SignUp value)? signUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SignUp value)? signUp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpScreenEventCopyWith<$Res> {
  factory $SignUpScreenEventCopyWith(
          SignUpScreenEvent value, $Res Function(SignUpScreenEvent) then) =
      _$SignUpScreenEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignUpScreenEventCopyWithImpl<$Res>
    implements $SignUpScreenEventCopyWith<$Res> {
  _$SignUpScreenEventCopyWithImpl(this._value, this._then);

  final SignUpScreenEvent _value;
  // ignore: unused_field
  final $Res Function(SignUpScreenEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$SignUpScreenEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'SignUpScreenEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password, String username)
        signUp,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password, String username)? signUp,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password, String username)? signUp,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SignUp value) signUp,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SignUp value)? signUp,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SignUp value)? signUp,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements SignUpScreenEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$SignUpCopyWith<$Res> {
  factory _$SignUpCopyWith(_SignUp value, $Res Function(_SignUp) then) =
      __$SignUpCopyWithImpl<$Res>;
  $Res call({String email, String password, String username});
}

/// @nodoc
class __$SignUpCopyWithImpl<$Res> extends _$SignUpScreenEventCopyWithImpl<$Res>
    implements _$SignUpCopyWith<$Res> {
  __$SignUpCopyWithImpl(_SignUp _value, $Res Function(_SignUp) _then)
      : super(_value, (v) => _then(v as _SignUp));

  @override
  _SignUp get _value => super._value as _SignUp;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? username = freezed,
  }) {
    return _then(_SignUp(
      email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SignUp implements _SignUp {
  const _$_SignUp(this.email, this.password, this.username);

  @override
  final String email;
  @override
  final String password;
  @override
  final String username;

  @override
  String toString() {
    return 'SignUpScreenEvent.signUp(email: $email, password: $password, username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SignUp &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password, username);

  @JsonKey(ignore: true)
  @override
  _$SignUpCopyWith<_SignUp> get copyWith =>
      __$SignUpCopyWithImpl<_SignUp>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password, String username)
        signUp,
  }) {
    return signUp(email, password, username);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password, String username)? signUp,
  }) {
    return signUp?.call(email, password, username);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password, String username)? signUp,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(email, password, username);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SignUp value) signUp,
  }) {
    return signUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SignUp value)? signUp,
  }) {
    return signUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SignUp value)? signUp,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(this);
    }
    return orElse();
  }
}

abstract class _SignUp implements SignUpScreenEvent {
  const factory _SignUp(String email, String password, String username) =
      _$_SignUp;

  String get email;
  String get password;
  String get username;
  @JsonKey(ignore: true)
  _$SignUpCopyWith<_SignUp> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$SignUpScreenStateTearOff {
  const _$SignUpScreenStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _ShowScreen showScreen() {
    return const _ShowScreen();
  }

  _ShowSuccess showSuccess() {
    return const _ShowSuccess();
  }

  _ErrorLoading errorLoading() {
    return const _ErrorLoading();
  }
}

/// @nodoc
const $SignUpScreenState = _$SignUpScreenStateTearOff();

/// @nodoc
mixin _$SignUpScreenState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() showScreen,
    required TResult Function() showSuccess,
    required TResult Function() errorLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? showScreen,
    TResult Function()? showSuccess,
    TResult Function()? errorLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? showScreen,
    TResult Function()? showSuccess,
    TResult Function()? errorLoading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ShowScreen value) showScreen,
    required TResult Function(_ShowSuccess value) showSuccess,
    required TResult Function(_ErrorLoading value) errorLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowScreen value)? showScreen,
    TResult Function(_ShowSuccess value)? showSuccess,
    TResult Function(_ErrorLoading value)? errorLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowScreen value)? showScreen,
    TResult Function(_ShowSuccess value)? showSuccess,
    TResult Function(_ErrorLoading value)? errorLoading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpScreenStateCopyWith<$Res> {
  factory $SignUpScreenStateCopyWith(
          SignUpScreenState value, $Res Function(SignUpScreenState) then) =
      _$SignUpScreenStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignUpScreenStateCopyWithImpl<$Res>
    implements $SignUpScreenStateCopyWith<$Res> {
  _$SignUpScreenStateCopyWithImpl(this._value, this._then);

  final SignUpScreenState _value;
  // ignore: unused_field
  final $Res Function(SignUpScreenState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$SignUpScreenStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'SignUpScreenState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() showScreen,
    required TResult Function() showSuccess,
    required TResult Function() errorLoading,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? showScreen,
    TResult Function()? showSuccess,
    TResult Function()? errorLoading,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? showScreen,
    TResult Function()? showSuccess,
    TResult Function()? errorLoading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ShowScreen value) showScreen,
    required TResult Function(_ShowSuccess value) showSuccess,
    required TResult Function(_ErrorLoading value) errorLoading,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowScreen value)? showScreen,
    TResult Function(_ShowSuccess value)? showSuccess,
    TResult Function(_ErrorLoading value)? errorLoading,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowScreen value)? showScreen,
    TResult Function(_ShowSuccess value)? showSuccess,
    TResult Function(_ErrorLoading value)? errorLoading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SignUpScreenState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$ShowScreenCopyWith<$Res> {
  factory _$ShowScreenCopyWith(
          _ShowScreen value, $Res Function(_ShowScreen) then) =
      __$ShowScreenCopyWithImpl<$Res>;
}

/// @nodoc
class __$ShowScreenCopyWithImpl<$Res>
    extends _$SignUpScreenStateCopyWithImpl<$Res>
    implements _$ShowScreenCopyWith<$Res> {
  __$ShowScreenCopyWithImpl(
      _ShowScreen _value, $Res Function(_ShowScreen) _then)
      : super(_value, (v) => _then(v as _ShowScreen));

  @override
  _ShowScreen get _value => super._value as _ShowScreen;
}

/// @nodoc

class _$_ShowScreen implements _ShowScreen {
  const _$_ShowScreen();

  @override
  String toString() {
    return 'SignUpScreenState.showScreen()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ShowScreen);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() showScreen,
    required TResult Function() showSuccess,
    required TResult Function() errorLoading,
  }) {
    return showScreen();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? showScreen,
    TResult Function()? showSuccess,
    TResult Function()? errorLoading,
  }) {
    return showScreen?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? showScreen,
    TResult Function()? showSuccess,
    TResult Function()? errorLoading,
    required TResult orElse(),
  }) {
    if (showScreen != null) {
      return showScreen();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ShowScreen value) showScreen,
    required TResult Function(_ShowSuccess value) showSuccess,
    required TResult Function(_ErrorLoading value) errorLoading,
  }) {
    return showScreen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowScreen value)? showScreen,
    TResult Function(_ShowSuccess value)? showSuccess,
    TResult Function(_ErrorLoading value)? errorLoading,
  }) {
    return showScreen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowScreen value)? showScreen,
    TResult Function(_ShowSuccess value)? showSuccess,
    TResult Function(_ErrorLoading value)? errorLoading,
    required TResult orElse(),
  }) {
    if (showScreen != null) {
      return showScreen(this);
    }
    return orElse();
  }
}

abstract class _ShowScreen implements SignUpScreenState {
  const factory _ShowScreen() = _$_ShowScreen;
}

/// @nodoc
abstract class _$ShowSuccessCopyWith<$Res> {
  factory _$ShowSuccessCopyWith(
          _ShowSuccess value, $Res Function(_ShowSuccess) then) =
      __$ShowSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$ShowSuccessCopyWithImpl<$Res>
    extends _$SignUpScreenStateCopyWithImpl<$Res>
    implements _$ShowSuccessCopyWith<$Res> {
  __$ShowSuccessCopyWithImpl(
      _ShowSuccess _value, $Res Function(_ShowSuccess) _then)
      : super(_value, (v) => _then(v as _ShowSuccess));

  @override
  _ShowSuccess get _value => super._value as _ShowSuccess;
}

/// @nodoc

class _$_ShowSuccess implements _ShowSuccess {
  const _$_ShowSuccess();

  @override
  String toString() {
    return 'SignUpScreenState.showSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ShowSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() showScreen,
    required TResult Function() showSuccess,
    required TResult Function() errorLoading,
  }) {
    return showSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? showScreen,
    TResult Function()? showSuccess,
    TResult Function()? errorLoading,
  }) {
    return showSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? showScreen,
    TResult Function()? showSuccess,
    TResult Function()? errorLoading,
    required TResult orElse(),
  }) {
    if (showSuccess != null) {
      return showSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ShowScreen value) showScreen,
    required TResult Function(_ShowSuccess value) showSuccess,
    required TResult Function(_ErrorLoading value) errorLoading,
  }) {
    return showSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowScreen value)? showScreen,
    TResult Function(_ShowSuccess value)? showSuccess,
    TResult Function(_ErrorLoading value)? errorLoading,
  }) {
    return showSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowScreen value)? showScreen,
    TResult Function(_ShowSuccess value)? showSuccess,
    TResult Function(_ErrorLoading value)? errorLoading,
    required TResult orElse(),
  }) {
    if (showSuccess != null) {
      return showSuccess(this);
    }
    return orElse();
  }
}

abstract class _ShowSuccess implements SignUpScreenState {
  const factory _ShowSuccess() = _$_ShowSuccess;
}

/// @nodoc
abstract class _$ErrorLoadingCopyWith<$Res> {
  factory _$ErrorLoadingCopyWith(
          _ErrorLoading value, $Res Function(_ErrorLoading) then) =
      __$ErrorLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$ErrorLoadingCopyWithImpl<$Res>
    extends _$SignUpScreenStateCopyWithImpl<$Res>
    implements _$ErrorLoadingCopyWith<$Res> {
  __$ErrorLoadingCopyWithImpl(
      _ErrorLoading _value, $Res Function(_ErrorLoading) _then)
      : super(_value, (v) => _then(v as _ErrorLoading));

  @override
  _ErrorLoading get _value => super._value as _ErrorLoading;
}

/// @nodoc

class _$_ErrorLoading implements _ErrorLoading {
  const _$_ErrorLoading();

  @override
  String toString() {
    return 'SignUpScreenState.errorLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ErrorLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() showScreen,
    required TResult Function() showSuccess,
    required TResult Function() errorLoading,
  }) {
    return errorLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? showScreen,
    TResult Function()? showSuccess,
    TResult Function()? errorLoading,
  }) {
    return errorLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? showScreen,
    TResult Function()? showSuccess,
    TResult Function()? errorLoading,
    required TResult orElse(),
  }) {
    if (errorLoading != null) {
      return errorLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ShowScreen value) showScreen,
    required TResult Function(_ShowSuccess value) showSuccess,
    required TResult Function(_ErrorLoading value) errorLoading,
  }) {
    return errorLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowScreen value)? showScreen,
    TResult Function(_ShowSuccess value)? showSuccess,
    TResult Function(_ErrorLoading value)? errorLoading,
  }) {
    return errorLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowScreen value)? showScreen,
    TResult Function(_ShowSuccess value)? showSuccess,
    TResult Function(_ErrorLoading value)? errorLoading,
    required TResult orElse(),
  }) {
    if (errorLoading != null) {
      return errorLoading(this);
    }
    return orElse();
  }
}

abstract class _ErrorLoading implements SignUpScreenState {
  const factory _ErrorLoading() = _$_ErrorLoading;
}
