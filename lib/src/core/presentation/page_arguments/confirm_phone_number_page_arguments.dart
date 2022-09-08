


class ConfirmPhoneNumberPageArguments{
  final int currentPage,totalPages;
  final Future<void> Function({required String phoneNumber,required String otpCode}) afterSuccessSubmitting;
  final String phoneNumber;


  ConfirmPhoneNumberPageArguments({required this.currentPage, required this.totalPages, required this.afterSuccessSubmitting, required this.phoneNumber});
}