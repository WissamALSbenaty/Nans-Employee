part of 'submitting_phone_number_bloc.dart';

@freezed
 class SubmittingPhoneNumberState with _$SubmittingPhoneNumberState {
   factory SubmittingPhoneNumberState({required String phoneNumber}) = _SubmittingPhoneNumber;
   factory SubmittingPhoneNumberState.submitting({required String phoneNumber}) = Submitting;

   factory SubmittingPhoneNumberState.initial(){return SubmittingPhoneNumberState(phoneNumber: "09");}
}
