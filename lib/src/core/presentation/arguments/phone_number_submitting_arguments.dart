


class EmailSubmittingArguments{

  final Future<void> Function({required String email}) afterSubmittingEmail;
  final Future<void> Function({required String email,required String otpCode}) afterSuccessVerification;
  final String pageTitle;
  final bool isOtpFromBackend;


  EmailSubmittingArguments({ required this.pageTitle,required this.afterSuccessVerification,
    required  this.afterSubmittingEmail,this.isOtpFromBackend=true});
}