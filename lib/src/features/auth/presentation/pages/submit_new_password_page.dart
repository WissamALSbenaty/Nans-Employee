import 'package:etloob/dependencies.dart';
import 'package:etloob/src/core/presentation/page_arguments/submit_new_password_arguments.dart';
import 'package:etloob/src/features/auth/controllers/submitting_new_password_controller/submitting_new_password_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SubmitNewPasswordPage extends StatelessWidget {

  final SubmitNewPasswordArguments args;
  const SubmitNewPasswordPage({Key? key,required this.args}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: getIt<SubmittingNewPasswordBloc>(param1: args.phoneNumber),
      child: BlocBuilder<SubmittingNewPasswordBloc,SubmittingNewPasswordState>(
        builder:(ctx,state)=> const Scaffold(
        ),
      ),
    );
  }
}
