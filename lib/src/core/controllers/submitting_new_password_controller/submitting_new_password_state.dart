part of 'submitting_new_password_bloc.dart';

@freezed
 class SubmittingNewPasswordState with _$SubmittingNewPasswordState {
   factory SubmittingNewPasswordState.submittingNewPassword({required String password,required String confirmPassword}) = SubmittingNewPassword;
   factory SubmittingNewPasswordState.submitting({required String password,required String confirmPassword}) = Submitting;

   factory SubmittingNewPasswordState.initial(){return SubmittingNewPasswordState.submittingNewPassword(password: "",confirmPassword: "");}
}
