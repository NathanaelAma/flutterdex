import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yapdex/modules/authentication/providers/models/email.dart';
import 'package:yapdex/modules/authentication/providers/models/password.dart';

part 'signup_state.freezed.dart';

@freezed
sealed class SignupState with _$SignupState {
  const factory SignupState({
    required Email email,
    required Password password,
  }) = SignupStateData;

  const factory SignupState.sending({
    required Email email,
    required Password password,
  }) = SignupStateSending;

  const SignupState._();
}
