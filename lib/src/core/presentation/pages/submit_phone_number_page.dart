import 'package:merit_driver/dependencies.dart';
import 'package:merit_driver/src/core/controllers/submitting_phone_number_controller/submitting_phone_number_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../page_arguments/phone_number_submitting_arguments.dart';

class SubmitPhoneNumberPage extends StatelessWidget {

  final PhoneNumberSubmittingArguments args;
  const SubmitPhoneNumberPage({Key? key, required this.args}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: getIt<SubmittingPhoneNumberBloc>(param1: args),
      child: BlocBuilder<SubmittingPhoneNumberBloc,SubmittingPhoneNumberState>(
        builder:(ctx,state)=> const Scaffold(

      ),
    ));
  }
}
