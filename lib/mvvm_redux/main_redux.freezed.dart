// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'main_redux.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AppStateTearOff {
  const _$AppStateTearOff();

  _AppState call({List<PostModel>? postsToShow, String? imagesToShowString}) {
    return _AppState(
      postsToShow: postsToShow,
      imagesToShowString: imagesToShowString,
    );
  }
}

/// @nodoc
const $AppState = _$AppStateTearOff();

/// @nodoc
mixin _$AppState {
  List<PostModel>? get postsToShow => throw _privateConstructorUsedError;
  String? get imagesToShowString => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res>;
  $Res call({List<PostModel>? postsToShow, String? imagesToShowString});
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res> implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  final AppState _value;
  // ignore: unused_field
  final $Res Function(AppState) _then;

  @override
  $Res call({
    Object? postsToShow = freezed,
    Object? imagesToShowString = freezed,
  }) {
    return _then(_value.copyWith(
      postsToShow: postsToShow == freezed
          ? _value.postsToShow
          : postsToShow // ignore: cast_nullable_to_non_nullable
              as List<PostModel>?,
      imagesToShowString: imagesToShowString == freezed
          ? _value.imagesToShowString
          : imagesToShowString // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$AppStateCopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory _$AppStateCopyWith(_AppState value, $Res Function(_AppState) then) =
      __$AppStateCopyWithImpl<$Res>;
  @override
  $Res call({List<PostModel>? postsToShow, String? imagesToShowString});
}

/// @nodoc
class __$AppStateCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements _$AppStateCopyWith<$Res> {
  __$AppStateCopyWithImpl(_AppState _value, $Res Function(_AppState) _then)
      : super(_value, (v) => _then(v as _AppState));

  @override
  _AppState get _value => super._value as _AppState;

  @override
  $Res call({
    Object? postsToShow = freezed,
    Object? imagesToShowString = freezed,
  }) {
    return _then(_AppState(
      postsToShow: postsToShow == freezed
          ? _value.postsToShow
          : postsToShow // ignore: cast_nullable_to_non_nullable
              as List<PostModel>?,
      imagesToShowString: imagesToShowString == freezed
          ? _value.imagesToShowString
          : imagesToShowString // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_AppState extends _AppState {
  _$_AppState({this.postsToShow, this.imagesToShowString}) : super._();

  @override
  final List<PostModel>? postsToShow;
  @override
  final String? imagesToShowString;

  @override
  String toString() {
    return 'AppState(postsToShow: $postsToShow, imagesToShowString: $imagesToShowString)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppState &&
            const DeepCollectionEquality()
                .equals(other.postsToShow, postsToShow) &&
            (identical(other.imagesToShowString, imagesToShowString) ||
                other.imagesToShowString == imagesToShowString));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(postsToShow), imagesToShowString);

  @JsonKey(ignore: true)
  @override
  _$AppStateCopyWith<_AppState> get copyWith =>
      __$AppStateCopyWithImpl<_AppState>(this, _$identity);
}

abstract class _AppState extends AppState {
  factory _AppState(
      {List<PostModel>? postsToShow, String? imagesToShowString}) = _$_AppState;
  _AppState._() : super._();

  @override
  List<PostModel>? get postsToShow;
  @override
  String? get imagesToShowString;
  @override
  @JsonKey(ignore: true)
  _$AppStateCopyWith<_AppState> get copyWith =>
      throw _privateConstructorUsedError;
}
