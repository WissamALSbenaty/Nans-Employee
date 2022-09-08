


class SubmitNewPasswordArguments{
  final String phoneNumber;
  final int totalPages,currentPage;
  final Future<void> Function(String password) afterSubmittingNewPassword;

  SubmitNewPasswordArguments({required this.totalPages, required this.currentPage,    required this.afterSubmittingNewPassword, required this.phoneNumber});
}