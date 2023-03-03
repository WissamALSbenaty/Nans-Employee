


class SubmitNewPasswordArguments{
  final Future<void> Function(String password) onSubmitNewPassword;
  SubmitNewPasswordArguments({ required this.onSubmitNewPassword,});
}