part of 'confirm_phone_number_bloc.dart';

@freezed
 class ConfirmPhoneNumberState with _$ConfirmPhoneNumberState {
   factory ConfirmPhoneNumberState.submitting({required String code}) = Submitting;
   factory ConfirmPhoneNumberState.verifying({required String code}) = Verifying;

   factory ConfirmPhoneNumberState.initial(){return ConfirmPhoneNumberState.submitting(code: "");}
}
