

import 'package:etloob/src/core/util/enums.dart';

class PhoneNumberSubmittingArguments{

  final Future<void> Function({required String phoneNumber}) afterSubmittingPhoneNumber;
  final Future<void> Function({required String phoneNumber,required String otpCode}) afterSuccessVerification;
  final String pageTitle;
  final VerificationReason verificationReason;
  final bool isOtpFromBackend;


  PhoneNumberSubmittingArguments({ required this.verificationReason, required this.pageTitle,required this.afterSuccessVerification,
    required  this.afterSubmittingPhoneNumber,this.isOtpFromBackend=true});
}