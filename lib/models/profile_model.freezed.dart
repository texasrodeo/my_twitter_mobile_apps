// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'profile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProfileModelTearOff {
  const _$ProfileModelTearOff();

  _ProfileModel call(
      {required String user_id, required String profilePictureUrl}) {
    return _ProfileModel(
      user_id: user_id,
      profilePictureUrl: profilePictureUrl,
    );
  }
}

/// @nodoc
const $ProfileModel = _$ProfileModelTearOff();

/// @nodoc
mixin _$ProfileModel {
  String get user_id => throw _privateConstructorUsedError;
  String get profilePictureUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileModelCopyWith<ProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileModelCopyWith<$Res> {
  factory $ProfileModelCopyWith(
          ProfileModel value, $Res Function(ProfileModel) then) =
      _$ProfileModelCopyWithImpl<$Res>;
  $Res call({String user_id, String profilePictureUrl});
}

/// @nodoc
class _$ProfileModelCopyWithImpl<$Res> implements $ProfileModelCopyWith<$Res> {
  _$ProfileModelCopyWithImpl(this._value, this._then);

  final ProfileModel _value;
  // ignore: unused_field
  final $Res Function(ProfileModel) _then;

  @override
  $Res call({
    Object? user_id = freezed,
    Object? profilePictureUrl = freezed,
  }) {
    return _then(_value.copyWith(
      user_id: user_id == freezed
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as String,
      profilePictureUrl: profilePictureUrl == freezed
          ? _value.profilePictureUrl
          : profilePictureUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ProfileModelCopyWith<$Res>
    implements $ProfileModelCopyWith<$Res> {
  factory _$ProfileModelCopyWith(
          _ProfileModel value, $Res Function(_ProfileModel) then) =
      __$ProfileModelCopyWithImpl<$Res>;
  @override
  $Res call({String user_id, String profilePictureUrl});
}

/// @nodoc
class __$ProfileModelCopyWithImpl<$Res> extends _$ProfileModelCopyWithImpl<$Res>
    implements _$ProfileModelCopyWith<$Res> {
  __$ProfileModelCopyWithImpl(
      _ProfileModel _value, $Res Function(_ProfileModel) _then)
      : super(_value, (v) => _then(v as _ProfileModel));

  @override
  _ProfileModel get _value => super._value as _ProfileModel;

  @override
  $Res call({
    Object? user_id = freezed,
    Object? profilePictureUrl = freezed,
  }) {
    return _then(_ProfileModel(
      user_id: user_id == freezed
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as String,
      profilePictureUrl: profilePictureUrl == freezed
          ? _value.profilePictureUrl
          : profilePictureUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ProfileModel implements _ProfileModel {
  const _$_ProfileModel(
      {required this.user_id, required this.profilePictureUrl});

  @override
  final String user_id;
  @override
  final String profilePictureUrl;

  @override
  String toString() {
    return 'ProfileModel(user_id: $user_id, profilePictureUrl: $profilePictureUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProfileModel &&
            (identical(other.user_id, user_id) || other.user_id == user_id) &&
            (identical(other.profilePictureUrl, profilePictureUrl) ||
                other.profilePictureUrl == profilePictureUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user_id, profilePictureUrl);

  @JsonKey(ignore: true)
  @override
  _$ProfileModelCopyWith<_ProfileModel> get copyWith =>
      __$ProfileModelCopyWithImpl<_ProfileModel>(this, _$identity);
}

abstract class _ProfileModel implements ProfileModel {
  const factory _ProfileModel(
      {required String user_id,
      required String profilePictureUrl}) = _$_ProfileModel;

  @override
  String get user_id;
  @override
  String get profilePictureUrl;
  @override
  @JsonKey(ignore: true)
  _$ProfileModelCopyWith<_ProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}
