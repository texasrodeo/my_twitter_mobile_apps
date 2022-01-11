// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_screen_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeScreenEventTearOff {
  const _$HomeScreenEventTearOff();

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

  _LoadMore loadMore() {
    return const _LoadMore();
  }

  _Refresh refresh() {
    return const _Refresh();
  }
}

/// @nodoc
const $HomeScreenEvent = _$HomeScreenEventTearOff();

/// @nodoc
mixin _$HomeScreenEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(LikeStatus currentLikeStatus, String postId)
        changeLikeStatus,
    required TResult Function() loadMore,
    required TResult Function() refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(LikeStatus currentLikeStatus, String postId)?
        changeLikeStatus,
    TResult Function()? loadMore,
    TResult Function()? refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(LikeStatus currentLikeStatus, String postId)?
        changeLikeStatus,
    TResult Function()? loadMore,
    TResult Function()? refresh,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangeLikeStatus value) changeLikeStatus,
    required TResult Function(_LoadMore value) loadMore,
    required TResult Function(_Refresh value) refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangeLikeStatus value)? changeLikeStatus,
    TResult Function(_LoadMore value)? loadMore,
    TResult Function(_Refresh value)? refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangeLikeStatus value)? changeLikeStatus,
    TResult Function(_LoadMore value)? loadMore,
    TResult Function(_Refresh value)? refresh,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeScreenEventCopyWith<$Res> {
  factory $HomeScreenEventCopyWith(
          HomeScreenEvent value, $Res Function(HomeScreenEvent) then) =
      _$HomeScreenEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeScreenEventCopyWithImpl<$Res>
    implements $HomeScreenEventCopyWith<$Res> {
  _$HomeScreenEventCopyWithImpl(this._value, this._then);

  final HomeScreenEvent _value;
  // ignore: unused_field
  final $Res Function(HomeScreenEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$HomeScreenEventCopyWithImpl<$Res>
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
    return 'HomeScreenEvent.started()';
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
    required TResult Function() loadMore,
    required TResult Function() refresh,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(LikeStatus currentLikeStatus, String postId)?
        changeLikeStatus,
    TResult Function()? loadMore,
    TResult Function()? refresh,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(LikeStatus currentLikeStatus, String postId)?
        changeLikeStatus,
    TResult Function()? loadMore,
    TResult Function()? refresh,
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
    required TResult Function(_LoadMore value) loadMore,
    required TResult Function(_Refresh value) refresh,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangeLikeStatus value)? changeLikeStatus,
    TResult Function(_LoadMore value)? loadMore,
    TResult Function(_Refresh value)? refresh,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangeLikeStatus value)? changeLikeStatus,
    TResult Function(_LoadMore value)? loadMore,
    TResult Function(_Refresh value)? refresh,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements HomeScreenEvent {
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
    extends _$HomeScreenEventCopyWithImpl<$Res>
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
    return 'HomeScreenEvent.changeLikeStatus(currentLikeStatus: $currentLikeStatus, postId: $postId)';
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
    required TResult Function() loadMore,
    required TResult Function() refresh,
  }) {
    return changeLikeStatus(currentLikeStatus, postId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(LikeStatus currentLikeStatus, String postId)?
        changeLikeStatus,
    TResult Function()? loadMore,
    TResult Function()? refresh,
  }) {
    return changeLikeStatus?.call(currentLikeStatus, postId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(LikeStatus currentLikeStatus, String postId)?
        changeLikeStatus,
    TResult Function()? loadMore,
    TResult Function()? refresh,
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
    required TResult Function(_LoadMore value) loadMore,
    required TResult Function(_Refresh value) refresh,
  }) {
    return changeLikeStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangeLikeStatus value)? changeLikeStatus,
    TResult Function(_LoadMore value)? loadMore,
    TResult Function(_Refresh value)? refresh,
  }) {
    return changeLikeStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangeLikeStatus value)? changeLikeStatus,
    TResult Function(_LoadMore value)? loadMore,
    TResult Function(_Refresh value)? refresh,
    required TResult orElse(),
  }) {
    if (changeLikeStatus != null) {
      return changeLikeStatus(this);
    }
    return orElse();
  }
}

abstract class _ChangeLikeStatus implements HomeScreenEvent {
  const factory _ChangeLikeStatus(LikeStatus currentLikeStatus, String postId) =
      _$_ChangeLikeStatus;

  LikeStatus get currentLikeStatus;
  String get postId;
  @JsonKey(ignore: true)
  _$ChangeLikeStatusCopyWith<_ChangeLikeStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadMoreCopyWith<$Res> {
  factory _$LoadMoreCopyWith(_LoadMore value, $Res Function(_LoadMore) then) =
      __$LoadMoreCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadMoreCopyWithImpl<$Res> extends _$HomeScreenEventCopyWithImpl<$Res>
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
    return 'HomeScreenEvent.loadMore()';
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
    required TResult Function() loadMore,
    required TResult Function() refresh,
  }) {
    return loadMore();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(LikeStatus currentLikeStatus, String postId)?
        changeLikeStatus,
    TResult Function()? loadMore,
    TResult Function()? refresh,
  }) {
    return loadMore?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(LikeStatus currentLikeStatus, String postId)?
        changeLikeStatus,
    TResult Function()? loadMore,
    TResult Function()? refresh,
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
    required TResult Function(_LoadMore value) loadMore,
    required TResult Function(_Refresh value) refresh,
  }) {
    return loadMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangeLikeStatus value)? changeLikeStatus,
    TResult Function(_LoadMore value)? loadMore,
    TResult Function(_Refresh value)? refresh,
  }) {
    return loadMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangeLikeStatus value)? changeLikeStatus,
    TResult Function(_LoadMore value)? loadMore,
    TResult Function(_Refresh value)? refresh,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore(this);
    }
    return orElse();
  }
}

abstract class _LoadMore implements HomeScreenEvent {
  const factory _LoadMore() = _$_LoadMore;
}

/// @nodoc
abstract class _$RefreshCopyWith<$Res> {
  factory _$RefreshCopyWith(_Refresh value, $Res Function(_Refresh) then) =
      __$RefreshCopyWithImpl<$Res>;
}

/// @nodoc
class __$RefreshCopyWithImpl<$Res> extends _$HomeScreenEventCopyWithImpl<$Res>
    implements _$RefreshCopyWith<$Res> {
  __$RefreshCopyWithImpl(_Refresh _value, $Res Function(_Refresh) _then)
      : super(_value, (v) => _then(v as _Refresh));

  @override
  _Refresh get _value => super._value as _Refresh;
}

/// @nodoc

class _$_Refresh implements _Refresh {
  const _$_Refresh();

  @override
  String toString() {
    return 'HomeScreenEvent.refresh()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Refresh);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(LikeStatus currentLikeStatus, String postId)
        changeLikeStatus,
    required TResult Function() loadMore,
    required TResult Function() refresh,
  }) {
    return refresh();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(LikeStatus currentLikeStatus, String postId)?
        changeLikeStatus,
    TResult Function()? loadMore,
    TResult Function()? refresh,
  }) {
    return refresh?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(LikeStatus currentLikeStatus, String postId)?
        changeLikeStatus,
    TResult Function()? loadMore,
    TResult Function()? refresh,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangeLikeStatus value) changeLikeStatus,
    required TResult Function(_LoadMore value) loadMore,
    required TResult Function(_Refresh value) refresh,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangeLikeStatus value)? changeLikeStatus,
    TResult Function(_LoadMore value)? loadMore,
    TResult Function(_Refresh value)? refresh,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangeLikeStatus value)? changeLikeStatus,
    TResult Function(_LoadMore value)? loadMore,
    TResult Function(_Refresh value)? refresh,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class _Refresh implements HomeScreenEvent {
  const factory _Refresh() = _$_Refresh;
}

/// @nodoc
class _$HomeScreenStateTearOff {
  const _$HomeScreenStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _ShowPosts showPosts(List<Post> postsToShow, String postsToShowString) {
    return _ShowPosts(
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
const $HomeScreenState = _$HomeScreenStateTearOff();

/// @nodoc
mixin _$HomeScreenState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Post> postsToShow, String postsToShowString)
        showPosts,
    required TResult Function() errorLoading,
    required TResult Function() unauthicated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Post> postsToShow, String postsToShowString)?
        showPosts,
    TResult Function()? errorLoading,
    TResult Function()? unauthicated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Post> postsToShow, String postsToShowString)?
        showPosts,
    TResult Function()? errorLoading,
    TResult Function()? unauthicated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ShowPosts value) showPosts,
    required TResult Function(_ErrorLoading value) errorLoading,
    required TResult Function(_Unauthicated value) unauthicated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowPosts value)? showPosts,
    TResult Function(_ErrorLoading value)? errorLoading,
    TResult Function(_Unauthicated value)? unauthicated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowPosts value)? showPosts,
    TResult Function(_ErrorLoading value)? errorLoading,
    TResult Function(_Unauthicated value)? unauthicated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeScreenStateCopyWith<$Res> {
  factory $HomeScreenStateCopyWith(
          HomeScreenState value, $Res Function(HomeScreenState) then) =
      _$HomeScreenStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeScreenStateCopyWithImpl<$Res>
    implements $HomeScreenStateCopyWith<$Res> {
  _$HomeScreenStateCopyWithImpl(this._value, this._then);

  final HomeScreenState _value;
  // ignore: unused_field
  final $Res Function(HomeScreenState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$HomeScreenStateCopyWithImpl<$Res>
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
    return 'HomeScreenState.initial()';
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
    required TResult Function(List<Post> postsToShow, String postsToShowString)
        showPosts,
    required TResult Function() errorLoading,
    required TResult Function() unauthicated,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Post> postsToShow, String postsToShowString)?
        showPosts,
    TResult Function()? errorLoading,
    TResult Function()? unauthicated,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Post> postsToShow, String postsToShowString)?
        showPosts,
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
    required TResult Function(_ShowPosts value) showPosts,
    required TResult Function(_ErrorLoading value) errorLoading,
    required TResult Function(_Unauthicated value) unauthicated,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowPosts value)? showPosts,
    TResult Function(_ErrorLoading value)? errorLoading,
    TResult Function(_Unauthicated value)? unauthicated,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowPosts value)? showPosts,
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

abstract class _Initial implements HomeScreenState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$ShowPostsCopyWith<$Res> {
  factory _$ShowPostsCopyWith(
          _ShowPosts value, $Res Function(_ShowPosts) then) =
      __$ShowPostsCopyWithImpl<$Res>;
  $Res call({List<Post> postsToShow, String postsToShowString});
}

/// @nodoc
class __$ShowPostsCopyWithImpl<$Res> extends _$HomeScreenStateCopyWithImpl<$Res>
    implements _$ShowPostsCopyWith<$Res> {
  __$ShowPostsCopyWithImpl(_ShowPosts _value, $Res Function(_ShowPosts) _then)
      : super(_value, (v) => _then(v as _ShowPosts));

  @override
  _ShowPosts get _value => super._value as _ShowPosts;

  @override
  $Res call({
    Object? postsToShow = freezed,
    Object? postsToShowString = freezed,
  }) {
    return _then(_ShowPosts(
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
}

/// @nodoc

class _$_ShowPosts implements _ShowPosts {
  const _$_ShowPosts(this.postsToShow, this.postsToShowString);

  @override
  final List<Post> postsToShow;
  @override
  final String postsToShowString;

  @override
  String toString() {
    return 'HomeScreenState.showPosts(postsToShow: $postsToShow, postsToShowString: $postsToShowString)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ShowPosts &&
            const DeepCollectionEquality()
                .equals(other.postsToShow, postsToShow) &&
            (identical(other.postsToShowString, postsToShowString) ||
                other.postsToShowString == postsToShowString));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(postsToShow), postsToShowString);

  @JsonKey(ignore: true)
  @override
  _$ShowPostsCopyWith<_ShowPosts> get copyWith =>
      __$ShowPostsCopyWithImpl<_ShowPosts>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Post> postsToShow, String postsToShowString)
        showPosts,
    required TResult Function() errorLoading,
    required TResult Function() unauthicated,
  }) {
    return showPosts(postsToShow, postsToShowString);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Post> postsToShow, String postsToShowString)?
        showPosts,
    TResult Function()? errorLoading,
    TResult Function()? unauthicated,
  }) {
    return showPosts?.call(postsToShow, postsToShowString);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Post> postsToShow, String postsToShowString)?
        showPosts,
    TResult Function()? errorLoading,
    TResult Function()? unauthicated,
    required TResult orElse(),
  }) {
    if (showPosts != null) {
      return showPosts(postsToShow, postsToShowString);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ShowPosts value) showPosts,
    required TResult Function(_ErrorLoading value) errorLoading,
    required TResult Function(_Unauthicated value) unauthicated,
  }) {
    return showPosts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowPosts value)? showPosts,
    TResult Function(_ErrorLoading value)? errorLoading,
    TResult Function(_Unauthicated value)? unauthicated,
  }) {
    return showPosts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowPosts value)? showPosts,
    TResult Function(_ErrorLoading value)? errorLoading,
    TResult Function(_Unauthicated value)? unauthicated,
    required TResult orElse(),
  }) {
    if (showPosts != null) {
      return showPosts(this);
    }
    return orElse();
  }
}

abstract class _ShowPosts implements HomeScreenState {
  const factory _ShowPosts(List<Post> postsToShow, String postsToShowString) =
      _$_ShowPosts;

  List<Post> get postsToShow;
  String get postsToShowString;
  @JsonKey(ignore: true)
  _$ShowPostsCopyWith<_ShowPosts> get copyWith =>
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
    extends _$HomeScreenStateCopyWithImpl<$Res>
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
    return 'HomeScreenState.errorLoading()';
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
    required TResult Function(List<Post> postsToShow, String postsToShowString)
        showPosts,
    required TResult Function() errorLoading,
    required TResult Function() unauthicated,
  }) {
    return errorLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Post> postsToShow, String postsToShowString)?
        showPosts,
    TResult Function()? errorLoading,
    TResult Function()? unauthicated,
  }) {
    return errorLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Post> postsToShow, String postsToShowString)?
        showPosts,
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
    required TResult Function(_ShowPosts value) showPosts,
    required TResult Function(_ErrorLoading value) errorLoading,
    required TResult Function(_Unauthicated value) unauthicated,
  }) {
    return errorLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowPosts value)? showPosts,
    TResult Function(_ErrorLoading value)? errorLoading,
    TResult Function(_Unauthicated value)? unauthicated,
  }) {
    return errorLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowPosts value)? showPosts,
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

abstract class _ErrorLoading implements HomeScreenState {
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
    extends _$HomeScreenStateCopyWithImpl<$Res>
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
    return 'HomeScreenState.unauthicated()';
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
    required TResult Function(List<Post> postsToShow, String postsToShowString)
        showPosts,
    required TResult Function() errorLoading,
    required TResult Function() unauthicated,
  }) {
    return unauthicated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Post> postsToShow, String postsToShowString)?
        showPosts,
    TResult Function()? errorLoading,
    TResult Function()? unauthicated,
  }) {
    return unauthicated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Post> postsToShow, String postsToShowString)?
        showPosts,
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
    required TResult Function(_ShowPosts value) showPosts,
    required TResult Function(_ErrorLoading value) errorLoading,
    required TResult Function(_Unauthicated value) unauthicated,
  }) {
    return unauthicated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowPosts value)? showPosts,
    TResult Function(_ErrorLoading value)? errorLoading,
    TResult Function(_Unauthicated value)? unauthicated,
  }) {
    return unauthicated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowPosts value)? showPosts,
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

abstract class _Unauthicated implements HomeScreenState {
  const factory _Unauthicated() = _$_Unauthicated;
}
