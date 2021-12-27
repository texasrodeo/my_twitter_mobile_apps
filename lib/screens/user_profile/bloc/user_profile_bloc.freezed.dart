// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserProfileStateTearOff {
  const _$UserProfileStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _ShowProfile showProfile(
      User user, List<Post> postsToShow, String postsToShowString) {
    return _ShowProfile(
      user,
      postsToShow,
      postsToShowString,
    );
  }

  _ErrorLoading errorLoading() {
    return const _ErrorLoading();
  }

  _Unauthicated unauthicated() {
    return const _Unauthicated();
  }
}

/// @nodoc
const $UserProfileState = _$UserProfileStateTearOff();

/// @nodoc
mixin _$UserProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            User user, List<Post> postsToShow, String postsToShowString)
        showProfile,
    required TResult Function() errorLoading,
    required TResult Function() unauthicated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            User user, List<Post> postsToShow, String postsToShowString)?
        showProfile,
    TResult Function()? errorLoading,
    TResult Function()? unauthicated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            User user, List<Post> postsToShow, String postsToShowString)?
        showProfile,
    TResult Function()? errorLoading,
    TResult Function()? unauthicated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ShowProfile value) showProfile,
    required TResult Function(_ErrorLoading value) errorLoading,
    required TResult Function(_Unauthicated value) unauthicated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowProfile value)? showProfile,
    TResult Function(_ErrorLoading value)? errorLoading,
    TResult Function(_Unauthicated value)? unauthicated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowProfile value)? showProfile,
    TResult Function(_ErrorLoading value)? errorLoading,
    TResult Function(_Unauthicated value)? unauthicated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileStateCopyWith<$Res> {
  factory $UserProfileStateCopyWith(
          UserProfileState value, $Res Function(UserProfileState) then) =
      _$UserProfileStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserProfileStateCopyWithImpl<$Res>
    implements $UserProfileStateCopyWith<$Res> {
  _$UserProfileStateCopyWithImpl(this._value, this._then);

  final UserProfileState _value;
  // ignore: unused_field
  final $Res Function(UserProfileState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$UserProfileStateCopyWithImpl<$Res>
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
    return 'UserProfileState.initial()';
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
    required TResult Function(
            User user, List<Post> postsToShow, String postsToShowString)
        showProfile,
    required TResult Function() errorLoading,
    required TResult Function() unauthicated,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            User user, List<Post> postsToShow, String postsToShowString)?
        showProfile,
    TResult Function()? errorLoading,
    TResult Function()? unauthicated,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            User user, List<Post> postsToShow, String postsToShowString)?
        showProfile,
    TResult Function()? errorLoading,
    TResult Function()? unauthicated,
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
    required TResult Function(_ShowProfile value) showProfile,
    required TResult Function(_ErrorLoading value) errorLoading,
    required TResult Function(_Unauthicated value) unauthicated,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowProfile value)? showProfile,
    TResult Function(_ErrorLoading value)? errorLoading,
    TResult Function(_Unauthicated value)? unauthicated,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowProfile value)? showProfile,
    TResult Function(_ErrorLoading value)? errorLoading,
    TResult Function(_Unauthicated value)? unauthicated,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements UserProfileState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$ShowProfileCopyWith<$Res> {
  factory _$ShowProfileCopyWith(
          _ShowProfile value, $Res Function(_ShowProfile) then) =
      __$ShowProfileCopyWithImpl<$Res>;
  $Res call({User user, List<Post> postsToShow, String postsToShowString});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$ShowProfileCopyWithImpl<$Res>
    extends _$UserProfileStateCopyWithImpl<$Res>
    implements _$ShowProfileCopyWith<$Res> {
  __$ShowProfileCopyWithImpl(
      _ShowProfile _value, $Res Function(_ShowProfile) _then)
      : super(_value, (v) => _then(v as _ShowProfile));

  @override
  _ShowProfile get _value => super._value as _ShowProfile;

  @override
  $Res call({
    Object? user = freezed,
    Object? postsToShow = freezed,
    Object? postsToShowString = freezed,
  }) {
    return _then(_ShowProfile(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      postsToShow == freezed
          ? _value.postsToShow
          : postsToShow // ignore: cast_nullable_to_non_nullable
              as List<Post>,
      postsToShowString == freezed
          ? _value.postsToShowString
          : postsToShowString // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$_ShowProfile implements _ShowProfile {
  const _$_ShowProfile(this.user, this.postsToShow, this.postsToShowString);

  @override
  final User user;
  @override
  final List<Post> postsToShow;
  @override
  final String postsToShowString;

  @override
  String toString() {
    return 'UserProfileState.showProfile(user: $user, postsToShow: $postsToShow, postsToShowString: $postsToShowString)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ShowProfile &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality()
                .equals(other.postsToShow, postsToShow) &&
            (identical(other.postsToShowString, postsToShowString) ||
                other.postsToShowString == postsToShowString));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user,
      const DeepCollectionEquality().hash(postsToShow), postsToShowString);

  @JsonKey(ignore: true)
  @override
  _$ShowProfileCopyWith<_ShowProfile> get copyWith =>
      __$ShowProfileCopyWithImpl<_ShowProfile>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            User user, List<Post> postsToShow, String postsToShowString)
        showProfile,
    required TResult Function() errorLoading,
    required TResult Function() unauthicated,
  }) {
    return showProfile(user, postsToShow, postsToShowString);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            User user, List<Post> postsToShow, String postsToShowString)?
        showProfile,
    TResult Function()? errorLoading,
    TResult Function()? unauthicated,
  }) {
    return showProfile?.call(user, postsToShow, postsToShowString);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            User user, List<Post> postsToShow, String postsToShowString)?
        showProfile,
    TResult Function()? errorLoading,
    TResult Function()? unauthicated,
    required TResult orElse(),
  }) {
    if (showProfile != null) {
      return showProfile(user, postsToShow, postsToShowString);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ShowProfile value) showProfile,
    required TResult Function(_ErrorLoading value) errorLoading,
    required TResult Function(_Unauthicated value) unauthicated,
  }) {
    return showProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowProfile value)? showProfile,
    TResult Function(_ErrorLoading value)? errorLoading,
    TResult Function(_Unauthicated value)? unauthicated,
  }) {
    return showProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowProfile value)? showProfile,
    TResult Function(_ErrorLoading value)? errorLoading,
    TResult Function(_Unauthicated value)? unauthicated,
    required TResult orElse(),
  }) {
    if (showProfile != null) {
      return showProfile(this);
    }
    return orElse();
  }
}

abstract class _ShowProfile implements UserProfileState {
  const factory _ShowProfile(
          User user, List<Post> postsToShow, String postsToShowString) =
      _$_ShowProfile;

  User get user;
  List<Post> get postsToShow;
  String get postsToShowString;
  @JsonKey(ignore: true)
  _$ShowProfileCopyWith<_ShowProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ErrorLoadingCopyWith<$Res> {
  factory _$ErrorLoadingCopyWith(
          _ErrorLoading value, $Res Function(_ErrorLoading) then) =
      __$ErrorLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$ErrorLoadingCopyWithImpl<$Res>
    extends _$UserProfileStateCopyWithImpl<$Res>
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
    return 'UserProfileState.errorLoading()';
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
    required TResult Function(
            User user, List<Post> postsToShow, String postsToShowString)
        showProfile,
    required TResult Function() errorLoading,
    required TResult Function() unauthicated,
  }) {
    return errorLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            User user, List<Post> postsToShow, String postsToShowString)?
        showProfile,
    TResult Function()? errorLoading,
    TResult Function()? unauthicated,
  }) {
    return errorLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            User user, List<Post> postsToShow, String postsToShowString)?
        showProfile,
    TResult Function()? errorLoading,
    TResult Function()? unauthicated,
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
    required TResult Function(_ShowProfile value) showProfile,
    required TResult Function(_ErrorLoading value) errorLoading,
    required TResult Function(_Unauthicated value) unauthicated,
  }) {
    return errorLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowProfile value)? showProfile,
    TResult Function(_ErrorLoading value)? errorLoading,
    TResult Function(_Unauthicated value)? unauthicated,
  }) {
    return errorLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowProfile value)? showProfile,
    TResult Function(_ErrorLoading value)? errorLoading,
    TResult Function(_Unauthicated value)? unauthicated,
    required TResult orElse(),
  }) {
    if (errorLoading != null) {
      return errorLoading(this);
    }
    return orElse();
  }
}

abstract class _ErrorLoading implements UserProfileState {
  const factory _ErrorLoading() = _$_ErrorLoading;
}

/// @nodoc
abstract class _$UnauthicatedCopyWith<$Res> {
  factory _$UnauthicatedCopyWith(
          _Unauthicated value, $Res Function(_Unauthicated) then) =
      __$UnauthicatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$UnauthicatedCopyWithImpl<$Res>
    extends _$UserProfileStateCopyWithImpl<$Res>
    implements _$UnauthicatedCopyWith<$Res> {
  __$UnauthicatedCopyWithImpl(
      _Unauthicated _value, $Res Function(_Unauthicated) _then)
      : super(_value, (v) => _then(v as _Unauthicated));

  @override
  _Unauthicated get _value => super._value as _Unauthicated;
}

/// @nodoc

class _$_Unauthicated implements _Unauthicated {
  const _$_Unauthicated();

  @override
  String toString() {
    return 'UserProfileState.unauthicated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Unauthicated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            User user, List<Post> postsToShow, String postsToShowString)
        showProfile,
    required TResult Function() errorLoading,
    required TResult Function() unauthicated,
  }) {
    return unauthicated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            User user, List<Post> postsToShow, String postsToShowString)?
        showProfile,
    TResult Function()? errorLoading,
    TResult Function()? unauthicated,
  }) {
    return unauthicated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            User user, List<Post> postsToShow, String postsToShowString)?
        showProfile,
    TResult Function()? errorLoading,
    TResult Function()? unauthicated,
    required TResult orElse(),
  }) {
    if (unauthicated != null) {
      return unauthicated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ShowProfile value) showProfile,
    required TResult Function(_ErrorLoading value) errorLoading,
    required TResult Function(_Unauthicated value) unauthicated,
  }) {
    return unauthicated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowProfile value)? showProfile,
    TResult Function(_ErrorLoading value)? errorLoading,
    TResult Function(_Unauthicated value)? unauthicated,
  }) {
    return unauthicated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowProfile value)? showProfile,
    TResult Function(_ErrorLoading value)? errorLoading,
    TResult Function(_Unauthicated value)? unauthicated,
    required TResult orElse(),
  }) {
    if (unauthicated != null) {
      return unauthicated(this);
    }
    return orElse();
  }
}

abstract class _Unauthicated implements UserProfileState {
  const factory _Unauthicated() = _$_Unauthicated;
}

/// @nodoc
class _$UserProfileEventTearOff {
  const _$UserProfileEventTearOff();

  _Started started() {
    return const _Started();
  }

  _ChangeLikeStatus changeLikeStatus(
      LikeStatus currentLikeStatus, String postId) {
    return _ChangeLikeStatus(
      currentLikeStatus,
      postId,
    );
  }

  _SignOut signOut() {
    return const _SignOut();
  }

  _LoadMore loadMore() {
    return const _LoadMore();
  }
}

/// @nodoc
const $UserProfileEvent = _$UserProfileEventTearOff();

/// @nodoc
mixin _$UserProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(LikeStatus currentLikeStatus, String postId)
        changeLikeStatus,
    required TResult Function() signOut,
    required TResult Function() loadMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(LikeStatus currentLikeStatus, String postId)?
        changeLikeStatus,
    TResult Function()? signOut,
    TResult Function()? loadMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(LikeStatus currentLikeStatus, String postId)?
        changeLikeStatus,
    TResult Function()? signOut,
    TResult Function()? loadMore,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangeLikeStatus value) changeLikeStatus,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_LoadMore value) loadMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangeLikeStatus value)? changeLikeStatus,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_LoadMore value)? loadMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangeLikeStatus value)? changeLikeStatus,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_LoadMore value)? loadMore,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileEventCopyWith<$Res> {
  factory $UserProfileEventCopyWith(
          UserProfileEvent value, $Res Function(UserProfileEvent) then) =
      _$UserProfileEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserProfileEventCopyWithImpl<$Res>
    implements $UserProfileEventCopyWith<$Res> {
  _$UserProfileEventCopyWithImpl(this._value, this._then);

  final UserProfileEvent _value;
  // ignore: unused_field
  final $Res Function(UserProfileEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$UserProfileEventCopyWithImpl<$Res>
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
    return 'UserProfileEvent.started()';
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
    required TResult Function(LikeStatus currentLikeStatus, String postId)
        changeLikeStatus,
    required TResult Function() signOut,
    required TResult Function() loadMore,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(LikeStatus currentLikeStatus, String postId)?
        changeLikeStatus,
    TResult Function()? signOut,
    TResult Function()? loadMore,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(LikeStatus currentLikeStatus, String postId)?
        changeLikeStatus,
    TResult Function()? signOut,
    TResult Function()? loadMore,
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
    required TResult Function(_ChangeLikeStatus value) changeLikeStatus,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_LoadMore value) loadMore,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangeLikeStatus value)? changeLikeStatus,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_LoadMore value)? loadMore,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangeLikeStatus value)? changeLikeStatus,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_LoadMore value)? loadMore,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements UserProfileEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$ChangeLikeStatusCopyWith<$Res> {
  factory _$ChangeLikeStatusCopyWith(
          _ChangeLikeStatus value, $Res Function(_ChangeLikeStatus) then) =
      __$ChangeLikeStatusCopyWithImpl<$Res>;
  $Res call({LikeStatus currentLikeStatus, String postId});
}

/// @nodoc
class __$ChangeLikeStatusCopyWithImpl<$Res>
    extends _$UserProfileEventCopyWithImpl<$Res>
    implements _$ChangeLikeStatusCopyWith<$Res> {
  __$ChangeLikeStatusCopyWithImpl(
      _ChangeLikeStatus _value, $Res Function(_ChangeLikeStatus) _then)
      : super(_value, (v) => _then(v as _ChangeLikeStatus));

  @override
  _ChangeLikeStatus get _value => super._value as _ChangeLikeStatus;

  @override
  $Res call({
    Object? currentLikeStatus = freezed,
    Object? postId = freezed,
  }) {
    return _then(_ChangeLikeStatus(
      currentLikeStatus == freezed
          ? _value.currentLikeStatus
          : currentLikeStatus // ignore: cast_nullable_to_non_nullable
              as LikeStatus,
      postId == freezed
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChangeLikeStatus implements _ChangeLikeStatus {
  const _$_ChangeLikeStatus(this.currentLikeStatus, this.postId);

  @override
  final LikeStatus currentLikeStatus;
  @override
  final String postId;

  @override
  String toString() {
    return 'UserProfileEvent.changeLikeStatus(currentLikeStatus: $currentLikeStatus, postId: $postId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChangeLikeStatus &&
            (identical(other.currentLikeStatus, currentLikeStatus) ||
                other.currentLikeStatus == currentLikeStatus) &&
            (identical(other.postId, postId) || other.postId == postId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentLikeStatus, postId);

  @JsonKey(ignore: true)
  @override
  _$ChangeLikeStatusCopyWith<_ChangeLikeStatus> get copyWith =>
      __$ChangeLikeStatusCopyWithImpl<_ChangeLikeStatus>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(LikeStatus currentLikeStatus, String postId)
        changeLikeStatus,
    required TResult Function() signOut,
    required TResult Function() loadMore,
  }) {
    return changeLikeStatus(currentLikeStatus, postId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(LikeStatus currentLikeStatus, String postId)?
        changeLikeStatus,
    TResult Function()? signOut,
    TResult Function()? loadMore,
  }) {
    return changeLikeStatus?.call(currentLikeStatus, postId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(LikeStatus currentLikeStatus, String postId)?
        changeLikeStatus,
    TResult Function()? signOut,
    TResult Function()? loadMore,
    required TResult orElse(),
  }) {
    if (changeLikeStatus != null) {
      return changeLikeStatus(currentLikeStatus, postId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangeLikeStatus value) changeLikeStatus,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_LoadMore value) loadMore,
  }) {
    return changeLikeStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangeLikeStatus value)? changeLikeStatus,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_LoadMore value)? loadMore,
  }) {
    return changeLikeStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangeLikeStatus value)? changeLikeStatus,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_LoadMore value)? loadMore,
    required TResult orElse(),
  }) {
    if (changeLikeStatus != null) {
      return changeLikeStatus(this);
    }
    return orElse();
  }
}

abstract class _ChangeLikeStatus implements UserProfileEvent {
  const factory _ChangeLikeStatus(LikeStatus currentLikeStatus, String postId) =
      _$_ChangeLikeStatus;

  LikeStatus get currentLikeStatus;
  String get postId;
  @JsonKey(ignore: true)
  _$ChangeLikeStatusCopyWith<_ChangeLikeStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SignOutCopyWith<$Res> {
  factory _$SignOutCopyWith(_SignOut value, $Res Function(_SignOut) then) =
      __$SignOutCopyWithImpl<$Res>;
}

/// @nodoc
class __$SignOutCopyWithImpl<$Res> extends _$UserProfileEventCopyWithImpl<$Res>
    implements _$SignOutCopyWith<$Res> {
  __$SignOutCopyWithImpl(_SignOut _value, $Res Function(_SignOut) _then)
      : super(_value, (v) => _then(v as _SignOut));

  @override
  _SignOut get _value => super._value as _SignOut;
}

/// @nodoc

class _$_SignOut implements _SignOut {
  const _$_SignOut();

  @override
  String toString() {
    return 'UserProfileEvent.signOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _SignOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(LikeStatus currentLikeStatus, String postId)
        changeLikeStatus,
    required TResult Function() signOut,
    required TResult Function() loadMore,
  }) {
    return signOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(LikeStatus currentLikeStatus, String postId)?
        changeLikeStatus,
    TResult Function()? signOut,
    TResult Function()? loadMore,
  }) {
    return signOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(LikeStatus currentLikeStatus, String postId)?
        changeLikeStatus,
    TResult Function()? signOut,
    TResult Function()? loadMore,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangeLikeStatus value) changeLikeStatus,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_LoadMore value) loadMore,
  }) {
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangeLikeStatus value)? changeLikeStatus,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_LoadMore value)? loadMore,
  }) {
    return signOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangeLikeStatus value)? changeLikeStatus,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_LoadMore value)? loadMore,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class _SignOut implements UserProfileEvent {
  const factory _SignOut() = _$_SignOut;
}

/// @nodoc
abstract class _$LoadMoreCopyWith<$Res> {
  factory _$LoadMoreCopyWith(_LoadMore value, $Res Function(_LoadMore) then) =
      __$LoadMoreCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadMoreCopyWithImpl<$Res> extends _$UserProfileEventCopyWithImpl<$Res>
    implements _$LoadMoreCopyWith<$Res> {
  __$LoadMoreCopyWithImpl(_LoadMore _value, $Res Function(_LoadMore) _then)
      : super(_value, (v) => _then(v as _LoadMore));

  @override
  _LoadMore get _value => super._value as _LoadMore;
}

/// @nodoc

class _$_LoadMore implements _LoadMore {
  const _$_LoadMore();

  @override
  String toString() {
    return 'UserProfileEvent.loadMore()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _LoadMore);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(LikeStatus currentLikeStatus, String postId)
        changeLikeStatus,
    required TResult Function() signOut,
    required TResult Function() loadMore,
  }) {
    return loadMore();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(LikeStatus currentLikeStatus, String postId)?
        changeLikeStatus,
    TResult Function()? signOut,
    TResult Function()? loadMore,
  }) {
    return loadMore?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(LikeStatus currentLikeStatus, String postId)?
        changeLikeStatus,
    TResult Function()? signOut,
    TResult Function()? loadMore,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangeLikeStatus value) changeLikeStatus,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_LoadMore value) loadMore,
  }) {
    return loadMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangeLikeStatus value)? changeLikeStatus,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_LoadMore value)? loadMore,
  }) {
    return loadMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangeLikeStatus value)? changeLikeStatus,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_LoadMore value)? loadMore,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore(this);
    }
    return orElse();
  }
}

abstract class _LoadMore implements UserProfileEvent {
  const factory _LoadMore() = _$_LoadMore;
}
