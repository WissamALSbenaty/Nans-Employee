


class ConfirmPhoneNumberPageArguments{
  final Future<void> Function({   required String phoneNumber,required String otpCode}) afterSuccessSubmitting;
  final Future<void> Function({required String phoneNumber})? resendOtpCodeCallback;

  final String phoneNumber,pageTitle;

  // in Case Of Syriatell Mtn etc.. .
  final bool isOtpFromBackend;

  ConfirmPhoneNumberPageArguments({required this.pageTitle,
      required this.afterSuccessSubmitting,  this.resendOtpCodeCallback,
        required this.phoneNumber,this.isOtpFromBackend=true}):assert(
  !(isOtpFromBackend==false && resendOtpCodeCallback==null)
  );
}