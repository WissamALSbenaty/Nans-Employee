

import 'package:merit_driver/src/Data/models/sign_up_model.dart';

class SignUpPageArguments{
  final int totalPages;
  final void Function(SignUpModel) afterSignUp;

  SignUpPageArguments({required this.totalPages, required this.afterSignUp});
}