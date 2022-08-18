





class PhoneNumberSubmittingArguments{

  final Future<void> Function({required String phoneNumber,required String otpCode}) afterSuccessVerification;
  final Future<void> Function({required String phoneNumber}) afterSubmittingPhoneNumber;
  final Future<void> Function({required String phoneNumber})? resendOtpCodeCallback;
  final bool isOtpFromBackend;
  final String pageTitle,otpPageTitle;


  PhoneNumberSubmittingArguments( {required this.otpPageTitle,required this.pageTitle,  required this.afterSuccessVerification,
    this.isOtpFromBackend=true, this.resendOtpCodeCallback,
    required  this.afterSubmittingPhoneNumber}):assert(
     !(isOtpFromBackend==false && resendOtpCodeCallback==null)
  );
}