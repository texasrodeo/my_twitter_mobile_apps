// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'main_user_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MainUserDetailsTearOff {
  const _$MainUserDetailsTearOff();

  _MainUserDetails call({required String email}) {
    return _MainUserDetails(
      email: email,
    );
  }
}

/// @nodoc
const $MainUserDetails = _$MainUserDetailsTearOff();

/// @nodoc
mixin _$MainUserDetails {
  String get email => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MainUserDetailsCopyWith<MainUserDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainUserDetailsCopyWith<$Res> {
  factory $MainUserDetailsCopyWith(
          MainUserDetails value, $Res Function(MainUserDetails) then) =
      _$MainUserDetailsCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class _$MainUserDetailsCopyWithImpl<$Res>
    implements $MainUserDetailsCopyWith<$Res> {
  _$MainUserDetailsCopyWithImpl(this._value, this._then);

  final MainUserDetails _value;
  // ignore: unused_field
  final $Res Function(MainUserDetails) _then;

  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$MainUserDetailsCopyWith<$Res>
    implements $MainUserDetailsCopyWith<$Res> {
  factory _$MainUserDetailsCopyWith(
          _MainUserDetails value, $Res Function(_MainUserDetails) then) =
      __$MainUserDetailsCopyWithImpl<$Res>;
  @override
  $Res call({String email});
}

/// @nodoc
class __$MainUserDetailsCopyWithImpl<$Res>
    extends _$MainUserDetailsCopyWithImpl<$Res>
    implements _$MainUserDetailsCopyWith<$Res> {
  __$MainUserDetailsCopyWithImpl(
      _MainUserDetails _value, $Res Function(_MainUserDetails) _then)
      : super(_value, (v) => _then(v as _MainUserDetails));

  @override
  _MainUserDetails get _value => super._value as _MainUserDetails;

  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_MainUserDetails(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_MainUserDetails implements _MainUserDetails {
  const _$_MainUserDetails({required this.email});

  @override
  final String email;

  @override
  String toString() {
    return 'MainUserDetails(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MainUserDetails &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  _$MainUserDetailsCopyWith<_MainUserDetails> get copyWith =>
      __$MainUserDetailsCopyWithImpl<_MainUserDetails>(this, _$identity);
}

abstract class _MainUserDetails implements MainUserDetails {
  const factory _MainUserDetails({required String email}) = _$_MainUserDetails;

  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$MainUserDetailsCopyWith<_MainUserDetails> get copyWith =>
      throw _privateConstructorUsedError;
}
