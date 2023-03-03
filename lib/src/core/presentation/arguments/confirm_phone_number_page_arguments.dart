




import 'package:etloob/src/core/util/enums.dart';

class ConfirmPhoneNumberPageArguments{
  final Future<void> Function({required String phoneNumber,required String otpCode}) afterSuccessSubmitting;
  final String phoneNumber;
  final VerificationReason verificationReason;

  ConfirmPhoneNumberPageArguments({required  this.verificationReason,
      required this.afterSuccessSubmitting,
        required this.phoneNumber});
}