





class ConfirmEmailPageArguments{
  final Future<void> Function({required String email,required String otpCode}) afterSuccessSubmitting;
  final String email;
  final bool isOtpFromBackend;

  ConfirmEmailPageArguments({
      required this.afterSuccessSubmitting,required this.isOtpFromBackend,
        required this.email});
}