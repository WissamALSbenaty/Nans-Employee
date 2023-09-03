





class ConfirmEmailPageArguments{
  final Future<void> Function({required String email,required String otpCode}) afterSuccessSubmitting,codeChecker;
  final Future<void> Function({required String email})? codeSender;
  final String email;

  ConfirmEmailPageArguments({
      required this.afterSuccessSubmitting,
      required this.codeChecker,required this.codeSender, required this.email});
}