import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_user_details.freezed.dart';

@freezed
abstract class MainUserDetails with _$MainUserDetails {
  const factory MainUserDetails({
    required String email,
  }) = _MainUserDetails;
}
