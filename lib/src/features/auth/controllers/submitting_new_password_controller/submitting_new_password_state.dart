part of 'submitting_new_password_bloc.dart';

@freezed
 class SubmittingNewPasswordState with _$SubmittingNewPasswordState {
   factory SubmittingNewPasswordState.submittingNewPassword({required String password}) = SubmittingNewPassword;
   factory SubmittingNewPasswordState.submitting({required String password}) = Submitting;

   factory SubmittingNewPasswordState.initial(){return SubmittingNewPasswordState.submittingNewPassword(password: "");}
}
