// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'fullscreen_post_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FullscreenPostEventTearOff {
  const _$FullscreenPostEventTearOff();

  _Started started(Post post) {
    return _Started(
      post,
    );
  }

  _StartedWithPostId startedWithPostId(String postId) {
    return _StartedWithPostId(
      postId,
    );
  }

  _ChangeLikeStatus changeLikeStatus(
      LikeStatus currentLikeStatus, String postId) {
    return _ChangeLikeStatus(
      currentLikeStatus,
      postId,
    );
  }

  _LoadMoreComments loadMoreComments() {
    return const _LoadMoreComments();
  }

  _AddComment addComment(String text) {
    return _AddComment(
      text,
    );
  }
}

/// @nodoc
const $FullscreenPostEvent = _$FullscreenPostEventTearOff();

/// @nodoc
mixin _$FullscreenPostEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Post post) started,
    required TResult Function(String postId) startedWithPostId,
    required TResult Function(LikeStatus currentLikeStatus, String postId)
        changeLikeStatus,
    required TResult Function() loadMoreComments,
    required TResult Function(String text) addComment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Post post)? started,
    TResult Function(String postId)? startedWithPostId,
    TResult Function(LikeStatus currentLikeStatus, String postId)?
        changeLikeStatus,
    TResult Function()? loadMoreComments,
    TResult Function(String text)? addComment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Post post)? started,
    TResult Function(String postId)? startedWithPostId,
    TResult Function(LikeStatus currentLikeStatus, String postId)?
        changeLikeStatus,
    TResult Function()? loadMoreComments,
    TResult Function(String text)? addComment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_StartedWithPostId value) startedWithPostId,
    required TResult Function(_ChangeLikeStatus value) changeLikeStatus,
    required TResult Function(_LoadMoreComments value) loadMoreComments,
    required TResult Function(_AddComment value) addComment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_StartedWithPostId value)? startedWithPostId,
    TResult Function(_ChangeLikeStatus value)? changeLikeStatus,
    TResult Function(_LoadMoreComments value)? loadMoreComments,
    TResult Function(_AddComment value)? addComment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_StartedWithPostId value)? startedWithPostId,
    TResult Function(_ChangeLikeStatus value)? changeLikeStatus,
    TResult Function(_LoadMoreComments value)? loadMoreComments,
    TResult Function(_AddComment value)? addComment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FullscreenPostEventCopyWith<$Res> {
  factory $FullscreenPostEventCopyWith(
          FullscreenPostEvent value, $Res Function(FullscreenPostEvent) then) =
      _$FullscreenPostEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FullscreenPostEventCopyWithImpl<$Res>
    implements $FullscreenPostEventCopyWith<$Res> {
  _$FullscreenPostEventCopyWithImpl(this._value, this._then);

  final FullscreenPostEvent _value;
  // ignore: unused_field
  final $Res Function(FullscreenPostEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
  $Res call({Post post});

  $PostCopyWith<$Res> get post;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res>
    extends _$FullscreenPostEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;

  @override
  $Res call({
    Object? post = freezed,
  }) {
    return _then(_Started(
      post == freezed
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as Post,
    ));
  }

  @override
  $PostCopyWith<$Res> get post {
    return $PostCopyWith<$Res>(_value.post, (value) {
      return _then(_value.copyWith(post: value));
    });
  }
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started(this.post);

  @override
  final Post post;

  @override
  String toString() {
    return 'FullscreenPostEvent.started(post: $post)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Started &&
            (identical(other.post, post) || other.post == post));
  }

  @override
  int get hashCode => Object.hash(runtimeType, post);

  @JsonKey(ignore: true)
  @override
  _$StartedCopyWith<_Started> get copyWith =>
      __$StartedCopyWithImpl<_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Post post) started,
    required TResult Function(String postId) startedWithPostId,
    required TResult Function(LikeStatus currentLikeStatus, String postId)
        changeLikeStatus,
    required TResult Function() loadMoreComments,
    required TResult Function(String text) addComment,
  }) {
    return started(post);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Post post)? started,
    TResult Function(String postId)? startedWithPostId,
    TResult Function(LikeStatus currentLikeStatus, String postId)?
        changeLikeStatus,
    TResult Function()? loadMoreComments,
    TResult Function(String text)? addComment,
  }) {
    return started?.call(post);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Post post)? started,
    TResult Function(String postId)? startedWithPostId,
    TResult Function(LikeStatus currentLikeStatus, String postId)?
        changeLikeStatus,
    TResult Function()? loadMoreComments,
    TResult Function(String text)? addComment,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(post);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_StartedWithPostId value) startedWithPostId,
    required TResult Function(_ChangeLikeStatus value) changeLikeStatus,
    required TResult Function(_LoadMoreComments value) loadMoreComments,
    required TResult Function(_AddComment value) addComment,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_StartedWithPostId value)? startedWithPostId,
    TResult Function(_ChangeLikeStatus value)? changeLikeStatus,
    TResult Function(_LoadMoreComments value)? loadMoreComments,
    TResult Function(_AddComment value)? addComment,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_StartedWithPostId value)? startedWithPostId,
    TResult Function(_ChangeLikeStatus value)? changeLikeStatus,
    TResult Function(_LoadMoreComments value)? loadMoreComments,
    TResult Function(_AddComment value)? addComment,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements FullscreenPostEvent {
  const factory _Started(Post post) = _$_Started;

  Post get post;
  @JsonKey(ignore: true)
  _$StartedCopyWith<_Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$StartedWithPostIdCopyWith<$Res> {
  factory _$StartedWithPostIdCopyWith(
          _StartedWithPostId value, $Res Function(_StartedWithPostId) then) =
      __$StartedWithPostIdCopyWithImpl<$Res>;
  $Res call({String postId});
}

/// @nodoc
class __$StartedWithPostIdCopyWithImpl<$Res>
    extends _$FullscreenPostEventCopyWithImpl<$Res>
    implements _$StartedWithPostIdCopyWith<$Res> {
  __$StartedWithPostIdCopyWithImpl(
      _StartedWithPostId _value, $Res Function(_StartedWithPostId) _then)
      : super(_value, (v) => _then(v as _StartedWithPostId));

  @override
  _StartedWithPostId get _value => super._value as _StartedWithPostId;

  @override
  $Res call({
    Object? postId = freezed,
  }) {
    return _then(_StartedWithPostId(
      postId == freezed
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_StartedWithPostId implements _StartedWithPostId {
  const _$_StartedWithPostId(this.postId);

  @override
  final String postId;

  @override
  String toString() {
    return 'FullscreenPostEvent.startedWithPostId(postId: $postId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StartedWithPostId &&
            (identical(other.postId, postId) || other.postId == postId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, postId);

  @JsonKey(ignore: true)
  @override
  _$StartedWithPostIdCopyWith<_StartedWithPostId> get copyWith =>
      __$StartedWithPostIdCopyWithImpl<_StartedWithPostId>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Post post) started,
    required TResult Function(String postId) startedWithPostId,
    required TResult Function(LikeStatus currentLikeStatus, String postId)
        changeLikeStatus,
    required TResult Function() loadMoreComments,
    required TResult Function(String text) addComment,
  }) {
    return startedWithPostId(postId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Post post)? started,
    TResult Function(String postId)? startedWithPostId,
    TResult Function(LikeStatus currentLikeStatus, String postId)?
        changeLikeStatus,
    TResult Function()? loadMoreComments,
    TResult Function(String text)? addComment,
  }) {
    return startedWithPostId?.call(postId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Post post)? started,
    TResult Function(String postId)? startedWithPostId,
    TResult Function(LikeStatus currentLikeStatus, String postId)?
        changeLikeStatus,
    TResult Function()? loadMoreComments,
    TResult Function(String text)? addComment,
    required TResult orElse(),
  }) {
    if (startedWithPostId != null) {
      return startedWithPostId(postId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_StartedWithPostId value) startedWithPostId,
    required TResult Function(_ChangeLikeStatus value) changeLikeStatus,
    required TResult Function(_LoadMoreComments value) loadMoreComments,
    required TResult Function(_AddComment value) addComment,
  }) {
    return startedWithPostId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_StartedWithPostId value)? startedWithPostId,
    TResult Function(_ChangeLikeStatus value)? changeLikeStatus,
    TResult Function(_LoadMoreComments value)? loadMoreComments,
    TResult Function(_AddComment value)? addComment,
  }) {
    return startedWithPostId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_StartedWithPostId value)? startedWithPostId,
    TResult Function(_ChangeLikeStatus value)? changeLikeStatus,
    TResult Function(_LoadMoreComments value)? loadMoreComments,
    TResult Function(_AddComment value)? addComment,
    required TResult orElse(),
  }) {
    if (startedWithPostId != null) {
      return startedWithPostId(this);
    }
    return orElse();
  }
}

abstract class _StartedWithPostId implements FullscreenPostEvent {
  const factory _StartedWithPostId(String postId) = _$_StartedWithPostId;

  String get postId;
  @JsonKey(ignore: true)
  _$StartedWithPostIdCopyWith<_StartedWithPostId> get copyWith =>
      throw _privateConstructorUsedError;
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
    extends _$FullscreenPostEventCopyWithImpl<$Res>
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
    return 'FullscreenPostEvent.changeLikeStatus(currentLikeStatus: $currentLikeStatus, postId: $postId)';
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
    required TResult Function(Post post) started,
    required TResult Function(String postId) startedWithPostId,
    required TResult Function(LikeStatus currentLikeStatus, String postId)
        changeLikeStatus,
    required TResult Function() loadMoreComments,
    required TResult Function(String text) addComment,
  }) {
    return changeLikeStatus(currentLikeStatus, postId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Post post)? started,
    TResult Function(String postId)? startedWithPostId,
    TResult Function(LikeStatus currentLikeStatus, String postId)?
        changeLikeStatus,
    TResult Function()? loadMoreComments,
    TResult Function(String text)? addComment,
  }) {
    return changeLikeStatus?.call(currentLikeStatus, postId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Post post)? started,
    TResult Function(String postId)? startedWithPostId,
    TResult Function(LikeStatus currentLikeStatus, String postId)?
        changeLikeStatus,
    TResult Function()? loadMoreComments,
    TResult Function(String text)? addComment,
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
    required TResult Function(_StartedWithPostId value) startedWithPostId,
    required TResult Function(_ChangeLikeStatus value) changeLikeStatus,
    required TResult Function(_LoadMoreComments value) loadMoreComments,
    required TResult Function(_AddComment value) addComment,
  }) {
    return changeLikeStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_StartedWithPostId value)? startedWithPostId,
    TResult Function(_ChangeLikeStatus value)? changeLikeStatus,
    TResult Function(_LoadMoreComments value)? loadMoreComments,
    TResult Function(_AddComment value)? addComment,
  }) {
    return changeLikeStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_StartedWithPostId value)? startedWithPostId,
    TResult Function(_ChangeLikeStatus value)? changeLikeStatus,
    TResult Function(_LoadMoreComments value)? loadMoreComments,
    TResult Function(_AddComment value)? addComment,
    required TResult orElse(),
  }) {
    if (changeLikeStatus != null) {
      return changeLikeStatus(this);
    }
    return orElse();
  }
}

abstract class _ChangeLikeStatus implements FullscreenPostEvent {
  const factory _ChangeLikeStatus(LikeStatus currentLikeStatus, String postId) =
      _$_ChangeLikeStatus;

  LikeStatus get currentLikeStatus;
  String get postId;
  @JsonKey(ignore: true)
  _$ChangeLikeStatusCopyWith<_ChangeLikeStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadMoreCommentsCopyWith<$Res> {
  factory _$LoadMoreCommentsCopyWith(
          _LoadMoreComments value, $Res Function(_LoadMoreComments) then) =
      __$LoadMoreCommentsCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadMoreCommentsCopyWithImpl<$Res>
    extends _$FullscreenPostEventCopyWithImpl<$Res>
    implements _$LoadMoreCommentsCopyWith<$Res> {
  __$LoadMoreCommentsCopyWithImpl(
      _LoadMoreComments _value, $Res Function(_LoadMoreComments) _then)
      : super(_value, (v) => _then(v as _LoadMoreComments));

  @override
  _LoadMoreComments get _value => super._value as _LoadMoreComments;
}

/// @nodoc

class _$_LoadMoreComments implements _LoadMoreComments {
  const _$_LoadMoreComments();

  @override
  String toString() {
    return 'FullscreenPostEvent.loadMoreComments()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _LoadMoreComments);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Post post) started,
    required TResult Function(String postId) startedWithPostId,
    required TResult Function(LikeStatus currentLikeStatus, String postId)
        changeLikeStatus,
    required TResult Function() loadMoreComments,
    required TResult Function(String text) addComment,
  }) {
    return loadMoreComments();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Post post)? started,
    TResult Function(String postId)? startedWithPostId,
    TResult Function(LikeStatus currentLikeStatus, String postId)?
        changeLikeStatus,
    TResult Function()? loadMoreComments,
    TResult Function(String text)? addComment,
  }) {
    return loadMoreComments?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Post post)? started,
    TResult Function(String postId)? startedWithPostId,
    TResult Function(LikeStatus currentLikeStatus, String postId)?
        changeLikeStatus,
    TResult Function()? loadMoreComments,
    TResult Function(String text)? addComment,
    required TResult orElse(),
  }) {
    if (loadMoreComments != null) {
      return loadMoreComments();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_StartedWithPostId value) startedWithPostId,
    required TResult Function(_ChangeLikeStatus value) changeLikeStatus,
    required TResult Function(_LoadMoreComments value) loadMoreComments,
    required TResult Function(_AddComment value) addComment,
  }) {
    return loadMoreComments(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_StartedWithPostId value)? startedWithPostId,
    TResult Function(_ChangeLikeStatus value)? changeLikeStatus,
    TResult Function(_LoadMoreComments value)? loadMoreComments,
    TResult Function(_AddComment value)? addComment,
  }) {
    return loadMoreComments?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_StartedWithPostId value)? startedWithPostId,
    TResult Function(_ChangeLikeStatus value)? changeLikeStatus,
    TResult Function(_LoadMoreComments value)? loadMoreComments,
    TResult Function(_AddComment value)? addComment,
    required TResult orElse(),
  }) {
    if (loadMoreComments != null) {
      return loadMoreComments(this);
    }
    return orElse();
  }
}

abstract class _LoadMoreComments implements FullscreenPostEvent {
  const factory _LoadMoreComments() = _$_LoadMoreComments;
}

/// @nodoc
abstract class _$AddCommentCopyWith<$Res> {
  factory _$AddCommentCopyWith(
          _AddComment value, $Res Function(_AddComment) then) =
      __$AddCommentCopyWithImpl<$Res>;
  $Res call({String text});
}

/// @nodoc
class __$AddCommentCopyWithImpl<$Res>
    extends _$FullscreenPostEventCopyWithImpl<$Res>
    implements _$AddCommentCopyWith<$Res> {
  __$AddCommentCopyWithImpl(
      _AddComment _value, $Res Function(_AddComment) _then)
      : super(_value, (v) => _then(v as _AddComment));

  @override
  _AddComment get _value => super._value as _AddComment;

  @override
  $Res call({
    Object? text = freezed,
  }) {
    return _then(_AddComment(
      text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AddComment implements _AddComment {
  const _$_AddComment(this.text);

  @override
  final String text;

  @override
  String toString() {
    return 'FullscreenPostEvent.addComment(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddComment &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  _$AddCommentCopyWith<_AddComment> get copyWith =>
      __$AddCommentCopyWithImpl<_AddComment>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Post post) started,
    required TResult Function(String postId) startedWithPostId,
    required TResult Function(LikeStatus currentLikeStatus, String postId)
        changeLikeStatus,
    required TResult Function() loadMoreComments,
    required TResult Function(String text) addComment,
  }) {
    return addComment(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Post post)? started,
    TResult Function(String postId)? startedWithPostId,
    TResult Function(LikeStatus currentLikeStatus, String postId)?
        changeLikeStatus,
    TResult Function()? loadMoreComments,
    TResult Function(String text)? addComment,
  }) {
    return addComment?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Post post)? started,
    TResult Function(String postId)? startedWithPostId,
    TResult Function(LikeStatus currentLikeStatus, String postId)?
        changeLikeStatus,
    TResult Function()? loadMoreComments,
    TResult Function(String text)? addComment,
    required TResult orElse(),
  }) {
    if (addComment != null) {
      return addComment(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_StartedWithPostId value) startedWithPostId,
    required TResult Function(_ChangeLikeStatus value) changeLikeStatus,
    required TResult Function(_LoadMoreComments value) loadMoreComments,
    required TResult Function(_AddComment value) addComment,
  }) {
    return addComment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_StartedWithPostId value)? startedWithPostId,
    TResult Function(_ChangeLikeStatus value)? changeLikeStatus,
    TResult Function(_LoadMoreComments value)? loadMoreComments,
    TResult Function(_AddComment value)? addComment,
  }) {
    return addComment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_StartedWithPostId value)? startedWithPostId,
    TResult Function(_ChangeLikeStatus value)? changeLikeStatus,
    TResult Function(_LoadMoreComments value)? loadMoreComments,
    TResult Function(_AddComment value)? addComment,
    required TResult orElse(),
  }) {
    if (addComment != null) {
      return addComment(this);
    }
    return orElse();
  }
}

abstract class _AddComment implements FullscreenPostEvent {
  const factory _AddComment(String text) = _$_AddComment;

  String get text;
  @JsonKey(ignore: true)
  _$AddCommentCopyWith<_AddComment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$FullscreenPostStateTearOff {
  const _$FullscreenPostStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _ShowPost showPost(Post post, String postString) {
    return _ShowPost(
      post,
      postString,
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
const $FullscreenPostState = _$FullscreenPostStateTearOff();

/// @nodoc
mixin _$FullscreenPostState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Post post, String postString) showPost,
    required TResult Function() errorLoading,
    required TResult Function() unauthicated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Post post, String postString)? showPost,
    TResult Function()? errorLoading,
    TResult Function()? unauthicated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Post post, String postString)? showPost,
    TResult Function()? errorLoading,
    TResult Function()? unauthicated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ShowPost value) showPost,
    required TResult Function(_ErrorLoading value) errorLoading,
    required TResult Function(_Unauthicated value) unauthicated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowPost value)? showPost,
    TResult Function(_ErrorLoading value)? errorLoading,
    TResult Function(_Unauthicated value)? unauthicated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowPost value)? showPost,
    TResult Function(_ErrorLoading value)? errorLoading,
    TResult Function(_Unauthicated value)? unauthicated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FullscreenPostStateCopyWith<$Res> {
  factory $FullscreenPostStateCopyWith(
          FullscreenPostState value, $Res Function(FullscreenPostState) then) =
      _$FullscreenPostStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FullscreenPostStateCopyWithImpl<$Res>
    implements $FullscreenPostStateCopyWith<$Res> {
  _$FullscreenPostStateCopyWithImpl(this._value, this._then);

  final FullscreenPostState _value;
  // ignore: unused_field
  final $Res Function(FullscreenPostState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$FullscreenPostStateCopyWithImpl<$Res>
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
    return 'FullscreenPostState.initial()';
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
    required TResult Function(Post post, String postString) showPost,
    required TResult Function() errorLoading,
    required TResult Function() unauthicated,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Post post, String postString)? showPost,
    TResult Function()? errorLoading,
    TResult Function()? unauthicated,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Post post, String postString)? showPost,
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
    required TResult Function(_ShowPost value) showPost,
    required TResult Function(_ErrorLoading value) errorLoading,
    required TResult Function(_Unauthicated value) unauthicated,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowPost value)? showPost,
    TResult Function(_ErrorLoading value)? errorLoading,
    TResult Function(_Unauthicated value)? unauthicated,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowPost value)? showPost,
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

abstract class _Initial implements FullscreenPostState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$ShowPostCopyWith<$Res> {
  factory _$ShowPostCopyWith(_ShowPost value, $Res Function(_ShowPost) then) =
      __$ShowPostCopyWithImpl<$Res>;
  $Res call({Post post, String postString});

  $PostCopyWith<$Res> get post;
}

/// @nodoc
class __$ShowPostCopyWithImpl<$Res>
    extends _$FullscreenPostStateCopyWithImpl<$Res>
    implements _$ShowPostCopyWith<$Res> {
  __$ShowPostCopyWithImpl(_ShowPost _value, $Res Function(_ShowPost) _then)
      : super(_value, (v) => _then(v as _ShowPost));

  @override
  _ShowPost get _value => super._value as _ShowPost;

  @override
  $Res call({
    Object? post = freezed,
    Object? postString = freezed,
  }) {
    return _then(_ShowPost(
      post == freezed
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as Post,
      postString == freezed
          ? _value.postString
          : postString // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $PostCopyWith<$Res> get post {
    return $PostCopyWith<$Res>(_value.post, (value) {
      return _then(_value.copyWith(post: value));
    });
  }
}

/// @nodoc

class _$_ShowPost implements _ShowPost {
  const _$_ShowPost(this.post, this.postString);

  @override
  final Post post;
  @override
  final String postString;

  @override
  String toString() {
    return 'FullscreenPostState.showPost(post: $post, postString: $postString)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ShowPost &&
            (identical(other.post, post) || other.post == post) &&
            (identical(other.postString, postString) ||
                other.postString == postString));
  }

  @override
  int get hashCode => Object.hash(runtimeType, post, postString);

  @JsonKey(ignore: true)
  @override
  _$ShowPostCopyWith<_ShowPost> get copyWith =>
      __$ShowPostCopyWithImpl<_ShowPost>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Post post, String postString) showPost,
    required TResult Function() errorLoading,
    required TResult Function() unauthicated,
  }) {
    return showPost(post, postString);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Post post, String postString)? showPost,
    TResult Function()? errorLoading,
    TResult Function()? unauthicated,
  }) {
    return showPost?.call(post, postString);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Post post, String postString)? showPost,
    TResult Function()? errorLoading,
    TResult Function()? unauthicated,
    required TResult orElse(),
  }) {
    if (showPost != null) {
      return showPost(post, postString);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ShowPost value) showPost,
    required TResult Function(_ErrorLoading value) errorLoading,
    required TResult Function(_Unauthicated value) unauthicated,
  }) {
    return showPost(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowPost value)? showPost,
    TResult Function(_ErrorLoading value)? errorLoading,
    TResult Function(_Unauthicated value)? unauthicated,
  }) {
    return showPost?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowPost value)? showPost,
    TResult Function(_ErrorLoading value)? errorLoading,
    TResult Function(_Unauthicated value)? unauthicated,
    required TResult orElse(),
  }) {
    if (showPost != null) {
      return showPost(this);
    }
    return orElse();
  }
}

abstract class _ShowPost implements FullscreenPostState {
  const factory _ShowPost(Post post, String postString) = _$_ShowPost;

  Post get post;
  String get postString;
  @JsonKey(ignore: true)
  _$ShowPostCopyWith<_ShowPost> get copyWith =>
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
    extends _$FullscreenPostStateCopyWithImpl<$Res>
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
    return 'FullscreenPostState.errorLoading()';
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
    required TResult Function(Post post, String postString) showPost,
    required TResult Function() errorLoading,
    required TResult Function() unauthicated,
  }) {
    return errorLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Post post, String postString)? showPost,
    TResult Function()? errorLoading,
    TResult Function()? unauthicated,
  }) {
    return errorLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Post post, String postString)? showPost,
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
    required TResult Function(_ShowPost value) showPost,
    required TResult Function(_ErrorLoading value) errorLoading,
    required TResult Function(_Unauthicated value) unauthicated,
  }) {
    return errorLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowPost value)? showPost,
    TResult Function(_ErrorLoading value)? errorLoading,
    TResult Function(_Unauthicated value)? unauthicated,
  }) {
    return errorLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowPost value)? showPost,
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

abstract class _ErrorLoading implements FullscreenPostState {
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
    extends _$FullscreenPostStateCopyWithImpl<$Res>
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
    return 'FullscreenPostState.unauthicated()';
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
    required TResult Function(Post post, String postString) showPost,
    required TResult Function() errorLoading,
    required TResult Function() unauthicated,
  }) {
    return unauthicated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Post post, String postString)? showPost,
    TResult Function()? errorLoading,
    TResult Function()? unauthicated,
  }) {
    return unauthicated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Post post, String postString)? showPost,
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
    required TResult Function(_ShowPost value) showPost,
    required TResult Function(_ErrorLoading value) errorLoading,
    required TResult Function(_Unauthicated value) unauthicated,
  }) {
    return unauthicated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowPost value)? showPost,
    TResult Function(_ErrorLoading value)? errorLoading,
    TResult Function(_Unauthicated value)? unauthicated,
  }) {
    return unauthicated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowPost value)? showPost,
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

abstract class _Unauthicated implements FullscreenPostState {
  const factory _Unauthicated() = _$_Unauthicated;
}
