


class EmailSubmittingArguments{

  final Future<void> Function({required String email}) afterSubmittingEmail;
  final Future<void> Function({required String email})? codeSender;
  final Future<void> Function({required String email,required String otpCode}) afterSuccessVerification,codeChecker;
  final String pageTitle;


  EmailSubmittingArguments({required this.codeSender,required this.codeChecker,  required this.pageTitle,required this.afterSuccessVerification,
    required  this.afterSubmittingEmail,});
}