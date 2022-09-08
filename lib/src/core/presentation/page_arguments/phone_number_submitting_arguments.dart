





class PhoneNumberSubmittingArguments{
  final int currentPage,totalPages;
  final Future<void> Function({required String phoneNumber,required String otpCode}) afterSuccessVerification;
  final Future<void> Function({required String phoneNumber}) afterSubmittingPhoneNumber;
  final String pageTitle;


  PhoneNumberSubmittingArguments( { required this.totalPages,required this.currentPage,required this.pageTitle,  required this.afterSuccessVerification, required  this.afterSubmittingPhoneNumber});
}