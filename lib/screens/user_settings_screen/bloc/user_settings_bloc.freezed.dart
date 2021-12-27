// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_settings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserSettingsScreenEventTearOff {
  const _$UserSettingsScreenEventTearOff();

  _Started started() {
    return const _Started();
  }

  _Send send(String username) {
    return _Send(
      username,
    );
  }

  _ChooseImage chooseImage() {
    return const _ChooseImage();
  }

  _ImageChosen imageChosen() {
    return const _ImageChosen();
  }
}

/// @nodoc
const $UserSettingsScreenEvent = _$UserSettingsScreenEventTearOff();

/// @nodoc
mixin _$UserSettingsScreenEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String username) send,
    required TResult Function() chooseImage,
    required TResult Function() imageChosen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String username)? send,
    TResult Function()? chooseImage,
    TResult Function()? imageChosen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String username)? send,
    TResult Function()? chooseImage,
    TResult Function()? imageChosen,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Send value) send,
    required TResult Function(_ChooseImage value) chooseImage,
    required TResult Function(_ImageChosen value) imageChosen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Send value)? send,
    TResult Function(_ChooseImage value)? chooseImage,
    TResult Function(_ImageChosen value)? imageChosen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Send value)? send,
    TResult Function(_ChooseImage value)? chooseImage,
    TResult Function(_ImageChosen value)? imageChosen,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserSettingsScreenEventCopyWith<$Res> {
  factory $UserSettingsScreenEventCopyWith(UserSettingsScreenEvent value,
          $Res Function(UserSettingsScreenEvent) then) =
      _$UserSettingsScreenEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserSettingsScreenEventCopyWithImpl<$Res>
    implements $UserSettingsScreenEventCopyWith<$Res> {
  _$UserSettingsScreenEventCopyWithImpl(this._value, this._then);

  final UserSettingsScreenEvent _value;
  // ignore: unused_field
  final $Res Function(UserSettingsScreenEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res>
    extends _$UserSettingsScreenEventCopyWithImpl<$Res>
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
    return 'UserSettingsScreenEvent.started()';
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
    required TResult Function(String username) send,
    required TResult Function() chooseImage,
    required TResult Function() imageChosen,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String username)? send,
    TResult Function()? chooseImage,
    TResult Function()? imageChosen,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String username)? send,
    TResult Function()? chooseImage,
    TResult Function()? imageChosen,
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
    required TResult Function(_Send value) send,
    required TResult Function(_ChooseImage value) chooseImage,
    required TResult Function(_ImageChosen value) imageChosen,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Send value)? send,
    TResult Function(_ChooseImage value)? chooseImage,
    TResult Function(_ImageChosen value)? imageChosen,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Send value)? send,
    TResult Function(_ChooseImage value)? chooseImage,
    TResult Function(_ImageChosen value)? imageChosen,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements UserSettingsScreenEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$SendCopyWith<$Res> {
  factory _$SendCopyWith(_Send value, $Res Function(_Send) then) =
      __$SendCopyWithImpl<$Res>;
  $Res call({String username});
}

/// @nodoc
class __$SendCopyWithImpl<$Res>
    extends _$UserSettingsScreenEventCopyWithImpl<$Res>
    implements _$SendCopyWith<$Res> {
  __$SendCopyWithImpl(_Send _value, $Res Function(_Send) _then)
      : super(_value, (v) => _then(v as _Send));

  @override
  _Send get _value => super._value as _Send;

  @override
  $Res call({
    Object? username = freezed,
  }) {
    return _then(_Send(
      username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Send implements _Send {
  const _$_Send(this.username);

  @override
  final String username;

  @override
  String toString() {
    return 'UserSettingsScreenEvent.send(username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Send &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @override
  int get hashCode => Object.hash(runtimeType, username);

  @JsonKey(ignore: true)
  @override
  _$SendCopyWith<_Send> get copyWith =>
      __$SendCopyWithImpl<_Send>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String username) send,
    required TResult Function() chooseImage,
    required TResult Function() imageChosen,
  }) {
    return send(username);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String username)? send,
    TResult Function()? chooseImage,
    TResult Function()? imageChosen,
  }) {
    return send?.call(username);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String username)? send,
    TResult Function()? chooseImage,
    TResult Function()? imageChosen,
    required TResult orElse(),
  }) {
    if (send != null) {
      return send(username);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Send value) send,
    required TResult Function(_ChooseImage value) chooseImage,
    required TResult Function(_ImageChosen value) imageChosen,
  }) {
    return send(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Send value)? send,
    TResult Function(_ChooseImage value)? chooseImage,
    TResult Function(_ImageChosen value)? imageChosen,
  }) {
    return send?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Send value)? send,
    TResult Function(_ChooseImage value)? chooseImage,
    TResult Function(_ImageChosen value)? imageChosen,
    required TResult orElse(),
  }) {
    if (send != null) {
      return send(this);
    }
    return orElse();
  }
}

abstract class _Send implements UserSettingsScreenEvent {
  const factory _Send(String username) = _$_Send;

  String get username;
  @JsonKey(ignore: true)
  _$SendCopyWith<_Send> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ChooseImageCopyWith<$Res> {
  factory _$ChooseImageCopyWith(
          _ChooseImage value, $Res Function(_ChooseImage) then) =
      __$ChooseImageCopyWithImpl<$Res>;
}

/// @nodoc
class __$ChooseImageCopyWithImpl<$Res>
    extends _$UserSettingsScreenEventCopyWithImpl<$Res>
    implements _$ChooseImageCopyWith<$Res> {
  __$ChooseImageCopyWithImpl(
      _ChooseImage _value, $Res Function(_ChooseImage) _then)
      : super(_value, (v) => _then(v as _ChooseImage));

  @override
  _ChooseImage get _value => super._value as _ChooseImage;
}

/// @nodoc

class _$_ChooseImage implements _ChooseImage {
  const _$_ChooseImage();

  @override
  String toString() {
    return 'UserSettingsScreenEvent.chooseImage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ChooseImage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String username) send,
    required TResult Function() chooseImage,
    required TResult Function() imageChosen,
  }) {
    return chooseImage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String username)? send,
    TResult Function()? chooseImage,
    TResult Function()? imageChosen,
  }) {
    return chooseImage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String username)? send,
    TResult Function()? chooseImage,
    TResult Function()? imageChosen,
    required TResult orElse(),
  }) {
    if (chooseImage != null) {
      return chooseImage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Send value) send,
    required TResult Function(_ChooseImage value) chooseImage,
    required TResult Function(_ImageChosen value) imageChosen,
  }) {
    return chooseImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Send value)? send,
    TResult Function(_ChooseImage value)? chooseImage,
    TResult Function(_ImageChosen value)? imageChosen,
  }) {
    return chooseImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Send value)? send,
    TResult Function(_ChooseImage value)? chooseImage,
    TResult Function(_ImageChosen value)? imageChosen,
    required TResult orElse(),
  }) {
    if (chooseImage != null) {
      return chooseImage(this);
    }
    return orElse();
  }
}

abstract class _ChooseImage implements UserSettingsScreenEvent {
  const factory _ChooseImage() = _$_ChooseImage;
}

/// @nodoc
abstract class _$ImageChosenCopyWith<$Res> {
  factory _$ImageChosenCopyWith(
          _ImageChosen value, $Res Function(_ImageChosen) then) =
      __$ImageChosenCopyWithImpl<$Res>;
}

/// @nodoc
class __$ImageChosenCopyWithImpl<$Res>
    extends _$UserSettingsScreenEventCopyWithImpl<$Res>
    implements _$ImageChosenCopyWith<$Res> {
  __$ImageChosenCopyWithImpl(
      _ImageChosen _value, $Res Function(_ImageChosen) _then)
      : super(_value, (v) => _then(v as _ImageChosen));

  @override
  _ImageChosen get _value => super._value as _ImageChosen;
}

/// @nodoc

class _$_ImageChosen implements _ImageChosen {
  const _$_ImageChosen();

  @override
  String toString() {
    return 'UserSettingsScreenEvent.imageChosen()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ImageChosen);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String username) send,
    required TResult Function() chooseImage,
    required TResult Function() imageChosen,
  }) {
    return imageChosen();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String username)? send,
    TResult Function()? chooseImage,
    TResult Function()? imageChosen,
  }) {
    return imageChosen?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String username)? send,
    TResult Function()? chooseImage,
    TResult Function()? imageChosen,
    required TResult orElse(),
  }) {
    if (imageChosen != null) {
      return imageChosen();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Send value) send,
    required TResult Function(_ChooseImage value) chooseImage,
    required TResult Function(_ImageChosen value) imageChosen,
  }) {
    return imageChosen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Send value)? send,
    TResult Function(_ChooseImage value)? chooseImage,
    TResult Function(_ImageChosen value)? imageChosen,
  }) {
    return imageChosen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Send value)? send,
    TResult Function(_ChooseImage value)? chooseImage,
    TResult Function(_ImageChosen value)? imageChosen,
    required TResult orElse(),
  }) {
    if (imageChosen != null) {
      return imageChosen(this);
    }
    return orElse();
  }
}

abstract class _ImageChosen implements UserSettingsScreenEvent {
  const factory _ImageChosen() = _$_ImageChosen;
}

/// @nodoc
class _$UserSettingsScreenStateTearOff {
  const _$UserSettingsScreenStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _ShowScreen showScreen() {
    return const _ShowScreen();
  }

  _ShowScreenWithImage showScreenWithImage() {
    return const _ShowScreenWithImage();
  }

  _ShowSuccess showSuccess() {
    return const _ShowSuccess();
  }

  _ShowImagePicker showImagePicker() {
    return const _ShowImagePicker();
  }

  _ErrorLoading errorLoading() {
    return const _ErrorLoading();
  }
}

/// @nodoc
const $UserSettingsScreenState = _$UserSettingsScreenStateTearOff();

/// @nodoc
mixin _$UserSettingsScreenState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() showScreen,
    required TResult Function() showScreenWithImage,
    required TResult Function() showSuccess,
    required TResult Function() showImagePicker,
    required TResult Function() errorLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? showScreen,
    TResult Function()? showScreenWithImage,
    TResult Function()? showSuccess,
    TResult Function()? showImagePicker,
    TResult Function()? errorLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? showScreen,
    TResult Function()? showScreenWithImage,
    TResult Function()? showSuccess,
    TResult Function()? showImagePicker,
    TResult Function()? errorLoading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ShowScreen value) showScreen,
    required TResult Function(_ShowScreenWithImage value) showScreenWithImage,
    required TResult Function(_ShowSuccess value) showSuccess,
    required TResult Function(_ShowImagePicker value) showImagePicker,
    required TResult Function(_ErrorLoading value) errorLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowScreen value)? showScreen,
    TResult Function(_ShowScreenWithImage value)? showScreenWithImage,
    TResult Function(_ShowSuccess value)? showSuccess,
    TResult Function(_ShowImagePicker value)? showImagePicker,
    TResult Function(_ErrorLoading value)? errorLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowScreen value)? showScreen,
    TResult Function(_ShowScreenWithImage value)? showScreenWithImage,
    TResult Function(_ShowSuccess value)? showSuccess,
    TResult Function(_ShowImagePicker value)? showImagePicker,
    TResult Function(_ErrorLoading value)? errorLoading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserSettingsScreenStateCopyWith<$Res> {
  factory $UserSettingsScreenStateCopyWith(UserSettingsScreenState value,
          $Res Function(UserSettingsScreenState) then) =
      _$UserSettingsScreenStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserSettingsScreenStateCopyWithImpl<$Res>
    implements $UserSettingsScreenStateCopyWith<$Res> {
  _$UserSettingsScreenStateCopyWithImpl(this._value, this._then);

  final UserSettingsScreenState _value;
  // ignore: unused_field
  final $Res Function(UserSettingsScreenState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$UserSettingsScreenStateCopyWithImpl<$Res>
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
    return 'UserSettingsScreenState.initial()';
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
    required TResult Function() showScreenWithImage,
    required TResult Function() showSuccess,
    required TResult Function() showImagePicker,
    required TResult Function() errorLoading,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? showScreen,
    TResult Function()? showScreenWithImage,
    TResult Function()? showSuccess,
    TResult Function()? showImagePicker,
    TResult Function()? errorLoading,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? showScreen,
    TResult Function()? showScreenWithImage,
    TResult Function()? showSuccess,
    TResult Function()? showImagePicker,
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
    required TResult Function(_ShowScreenWithImage value) showScreenWithImage,
    required TResult Function(_ShowSuccess value) showSuccess,
    required TResult Function(_ShowImagePicker value) showImagePicker,
    required TResult Function(_ErrorLoading value) errorLoading,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowScreen value)? showScreen,
    TResult Function(_ShowScreenWithImage value)? showScreenWithImage,
    TResult Function(_ShowSuccess value)? showSuccess,
    TResult Function(_ShowImagePicker value)? showImagePicker,
    TResult Function(_ErrorLoading value)? errorLoading,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowScreen value)? showScreen,
    TResult Function(_ShowScreenWithImage value)? showScreenWithImage,
    TResult Function(_ShowSuccess value)? showSuccess,
    TResult Function(_ShowImagePicker value)? showImagePicker,
    TResult Function(_ErrorLoading value)? errorLoading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements UserSettingsScreenState {
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
    extends _$UserSettingsScreenStateCopyWithImpl<$Res>
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
    return 'UserSettingsScreenState.showScreen()';
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
    required TResult Function() showScreenWithImage,
    required TResult Function() showSuccess,
    required TResult Function() showImagePicker,
    required TResult Function() errorLoading,
  }) {
    return showScreen();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? showScreen,
    TResult Function()? showScreenWithImage,
    TResult Function()? showSuccess,
    TResult Function()? showImagePicker,
    TResult Function()? errorLoading,
  }) {
    return showScreen?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? showScreen,
    TResult Function()? showScreenWithImage,
    TResult Function()? showSuccess,
    TResult Function()? showImagePicker,
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
    required TResult Function(_ShowScreenWithImage value) showScreenWithImage,
    required TResult Function(_ShowSuccess value) showSuccess,
    required TResult Function(_ShowImagePicker value) showImagePicker,
    required TResult Function(_ErrorLoading value) errorLoading,
  }) {
    return showScreen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowScreen value)? showScreen,
    TResult Function(_ShowScreenWithImage value)? showScreenWithImage,
    TResult Function(_ShowSuccess value)? showSuccess,
    TResult Function(_ShowImagePicker value)? showImagePicker,
    TResult Function(_ErrorLoading value)? errorLoading,
  }) {
    return showScreen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowScreen value)? showScreen,
    TResult Function(_ShowScreenWithImage value)? showScreenWithImage,
    TResult Function(_ShowSuccess value)? showSuccess,
    TResult Function(_ShowImagePicker value)? showImagePicker,
    TResult Function(_ErrorLoading value)? errorLoading,
    required TResult orElse(),
  }) {
    if (showScreen != null) {
      return showScreen(this);
    }
    return orElse();
  }
}

abstract class _ShowScreen implements UserSettingsScreenState {
  const factory _ShowScreen() = _$_ShowScreen;
}

/// @nodoc
abstract class _$ShowScreenWithImageCopyWith<$Res> {
  factory _$ShowScreenWithImageCopyWith(_ShowScreenWithImage value,
          $Res Function(_ShowScreenWithImage) then) =
      __$ShowScreenWithImageCopyWithImpl<$Res>;
}

/// @nodoc
class __$ShowScreenWithImageCopyWithImpl<$Res>
    extends _$UserSettingsScreenStateCopyWithImpl<$Res>
    implements _$ShowScreenWithImageCopyWith<$Res> {
  __$ShowScreenWithImageCopyWithImpl(
      _ShowScreenWithImage _value, $Res Function(_ShowScreenWithImage) _then)
      : super(_value, (v) => _then(v as _ShowScreenWithImage));

  @override
  _ShowScreenWithImage get _value => super._value as _ShowScreenWithImage;
}

/// @nodoc

class _$_ShowScreenWithImage implements _ShowScreenWithImage {
  const _$_ShowScreenWithImage();

  @override
  String toString() {
    return 'UserSettingsScreenState.showScreenWithImage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ShowScreenWithImage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() showScreen,
    required TResult Function() showScreenWithImage,
    required TResult Function() showSuccess,
    required TResult Function() showImagePicker,
    required TResult Function() errorLoading,
  }) {
    return showScreenWithImage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? showScreen,
    TResult Function()? showScreenWithImage,
    TResult Function()? showSuccess,
    TResult Function()? showImagePicker,
    TResult Function()? errorLoading,
  }) {
    return showScreenWithImage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? showScreen,
    TResult Function()? showScreenWithImage,
    TResult Function()? showSuccess,
    TResult Function()? showImagePicker,
    TResult Function()? errorLoading,
    required TResult orElse(),
  }) {
    if (showScreenWithImage != null) {
      return showScreenWithImage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ShowScreen value) showScreen,
    required TResult Function(_ShowScreenWithImage value) showScreenWithImage,
    required TResult Function(_ShowSuccess value) showSuccess,
    required TResult Function(_ShowImagePicker value) showImagePicker,
    required TResult Function(_ErrorLoading value) errorLoading,
  }) {
    return showScreenWithImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowScreen value)? showScreen,
    TResult Function(_ShowScreenWithImage value)? showScreenWithImage,
    TResult Function(_ShowSuccess value)? showSuccess,
    TResult Function(_ShowImagePicker value)? showImagePicker,
    TResult Function(_ErrorLoading value)? errorLoading,
  }) {
    return showScreenWithImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowScreen value)? showScreen,
    TResult Function(_ShowScreenWithImage value)? showScreenWithImage,
    TResult Function(_ShowSuccess value)? showSuccess,
    TResult Function(_ShowImagePicker value)? showImagePicker,
    TResult Function(_ErrorLoading value)? errorLoading,
    required TResult orElse(),
  }) {
    if (showScreenWithImage != null) {
      return showScreenWithImage(this);
    }
    return orElse();
  }
}

abstract class _ShowScreenWithImage implements UserSettingsScreenState {
  const factory _ShowScreenWithImage() = _$_ShowScreenWithImage;
}

/// @nodoc
abstract class _$ShowSuccessCopyWith<$Res> {
  factory _$ShowSuccessCopyWith(
          _ShowSuccess value, $Res Function(_ShowSuccess) then) =
      __$ShowSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$ShowSuccessCopyWithImpl<$Res>
    extends _$UserSettingsScreenStateCopyWithImpl<$Res>
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
    return 'UserSettingsScreenState.showSuccess()';
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
    required TResult Function() showScreenWithImage,
    required TResult Function() showSuccess,
    required TResult Function() showImagePicker,
    required TResult Function() errorLoading,
  }) {
    return showSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? showScreen,
    TResult Function()? showScreenWithImage,
    TResult Function()? showSuccess,
    TResult Function()? showImagePicker,
    TResult Function()? errorLoading,
  }) {
    return showSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? showScreen,
    TResult Function()? showScreenWithImage,
    TResult Function()? showSuccess,
    TResult Function()? showImagePicker,
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
    required TResult Function(_ShowScreenWithImage value) showScreenWithImage,
    required TResult Function(_ShowSuccess value) showSuccess,
    required TResult Function(_ShowImagePicker value) showImagePicker,
    required TResult Function(_ErrorLoading value) errorLoading,
  }) {
    return showSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowScreen value)? showScreen,
    TResult Function(_ShowScreenWithImage value)? showScreenWithImage,
    TResult Function(_ShowSuccess value)? showSuccess,
    TResult Function(_ShowImagePicker value)? showImagePicker,
    TResult Function(_ErrorLoading value)? errorLoading,
  }) {
    return showSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowScreen value)? showScreen,
    TResult Function(_ShowScreenWithImage value)? showScreenWithImage,
    TResult Function(_ShowSuccess value)? showSuccess,
    TResult Function(_ShowImagePicker value)? showImagePicker,
    TResult Function(_ErrorLoading value)? errorLoading,
    required TResult orElse(),
  }) {
    if (showSuccess != null) {
      return showSuccess(this);
    }
    return orElse();
  }
}

abstract class _ShowSuccess implements UserSettingsScreenState {
  const factory _ShowSuccess() = _$_ShowSuccess;
}

/// @nodoc
abstract class _$ShowImagePickerCopyWith<$Res> {
  factory _$ShowImagePickerCopyWith(
          _ShowImagePicker value, $Res Function(_ShowImagePicker) then) =
      __$ShowImagePickerCopyWithImpl<$Res>;
}

/// @nodoc
class __$ShowImagePickerCopyWithImpl<$Res>
    extends _$UserSettingsScreenStateCopyWithImpl<$Res>
    implements _$ShowImagePickerCopyWith<$Res> {
  __$ShowImagePickerCopyWithImpl(
      _ShowImagePicker _value, $Res Function(_ShowImagePicker) _then)
      : super(_value, (v) => _then(v as _ShowImagePicker));

  @override
  _ShowImagePicker get _value => super._value as _ShowImagePicker;
}

/// @nodoc

class _$_ShowImagePicker implements _ShowImagePicker {
  const _$_ShowImagePicker();

  @override
  String toString() {
    return 'UserSettingsScreenState.showImagePicker()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ShowImagePicker);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() showScreen,
    required TResult Function() showScreenWithImage,
    required TResult Function() showSuccess,
    required TResult Function() showImagePicker,
    required TResult Function() errorLoading,
  }) {
    return showImagePicker();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? showScreen,
    TResult Function()? showScreenWithImage,
    TResult Function()? showSuccess,
    TResult Function()? showImagePicker,
    TResult Function()? errorLoading,
  }) {
    return showImagePicker?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? showScreen,
    TResult Function()? showScreenWithImage,
    TResult Function()? showSuccess,
    TResult Function()? showImagePicker,
    TResult Function()? errorLoading,
    required TResult orElse(),
  }) {
    if (showImagePicker != null) {
      return showImagePicker();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ShowScreen value) showScreen,
    required TResult Function(_ShowScreenWithImage value) showScreenWithImage,
    required TResult Function(_ShowSuccess value) showSuccess,
    required TResult Function(_ShowImagePicker value) showImagePicker,
    required TResult Function(_ErrorLoading value) errorLoading,
  }) {
    return showImagePicker(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowScreen value)? showScreen,
    TResult Function(_ShowScreenWithImage value)? showScreenWithImage,
    TResult Function(_ShowSuccess value)? showSuccess,
    TResult Function(_ShowImagePicker value)? showImagePicker,
    TResult Function(_ErrorLoading value)? errorLoading,
  }) {
    return showImagePicker?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowScreen value)? showScreen,
    TResult Function(_ShowScreenWithImage value)? showScreenWithImage,
    TResult Function(_ShowSuccess value)? showSuccess,
    TResult Function(_ShowImagePicker value)? showImagePicker,
    TResult Function(_ErrorLoading value)? errorLoading,
    required TResult orElse(),
  }) {
    if (showImagePicker != null) {
      return showImagePicker(this);
    }
    return orElse();
  }
}

abstract class _ShowImagePicker implements UserSettingsScreenState {
  const factory _ShowImagePicker() = _$_ShowImagePicker;
}

/// @nodoc
abstract class _$ErrorLoadingCopyWith<$Res> {
  factory _$ErrorLoadingCopyWith(
          _ErrorLoading value, $Res Function(_ErrorLoading) then) =
      __$ErrorLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$ErrorLoadingCopyWithImpl<$Res>
    extends _$UserSettingsScreenStateCopyWithImpl<$Res>
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
    return 'UserSettingsScreenState.errorLoading()';
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
    required TResult Function() showScreenWithImage,
    required TResult Function() showSuccess,
    required TResult Function() showImagePicker,
    required TResult Function() errorLoading,
  }) {
    return errorLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? showScreen,
    TResult Function()? showScreenWithImage,
    TResult Function()? showSuccess,
    TResult Function()? showImagePicker,
    TResult Function()? errorLoading,
  }) {
    return errorLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? showScreen,
    TResult Function()? showScreenWithImage,
    TResult Function()? showSuccess,
    TResult Function()? showImagePicker,
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
    required TResult Function(_ShowScreenWithImage value) showScreenWithImage,
    required TResult Function(_ShowSuccess value) showSuccess,
    required TResult Function(_ShowImagePicker value) showImagePicker,
    required TResult Function(_ErrorLoading value) errorLoading,
  }) {
    return errorLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowScreen value)? showScreen,
    TResult Function(_ShowScreenWithImage value)? showScreenWithImage,
    TResult Function(_ShowSuccess value)? showSuccess,
    TResult Function(_ShowImagePicker value)? showImagePicker,
    TResult Function(_ErrorLoading value)? errorLoading,
  }) {
    return errorLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowScreen value)? showScreen,
    TResult Function(_ShowScreenWithImage value)? showScreenWithImage,
    TResult Function(_ShowSuccess value)? showSuccess,
    TResult Function(_ShowImagePicker value)? showImagePicker,
    TResult Function(_ErrorLoading value)? errorLoading,
    required TResult orElse(),
  }) {
    if (errorLoading != null) {
      return errorLoading(this);
    }
    return orElse();
  }
}

abstract class _ErrorLoading implements UserSettingsScreenState {
  const factory _ErrorLoading() = _$_ErrorLoading;
}
