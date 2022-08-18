import 'package:etloob/dependencies.dart';
import 'package:etloob/src/core/controllers/confirm_phone_number_controller/confirm_phone_number_bloc.dart';
import 'package:etloob/src/core/presentation/page_arguments/confirm_phone_number_page_arguments.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ConfirmPhoneNumberPage extends StatelessWidget {

  final ConfirmPhoneNumberPageArguments args;
   const ConfirmPhoneNumberPage({Key? key, required this.args}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: getIt<ConfirmPhoneNumberBloc>(param1: args)..initialized(),
      child: BlocBuilder<ConfirmPhoneNumberBloc,ConfirmPhoneNumberState>(
        builder:(ctx,state) =>   ConfirmPhoneNumberBody(args: args),
      ),
    );
  }
}

class ConfirmPhoneNumberBody extends StatefulWidget{
  final ConfirmPhoneNumberPageArguments args;
  const ConfirmPhoneNumberBody({Key? key, required this.args}) : super(key: key);

  @override
  State<ConfirmPhoneNumberBody> createState() => _ConfirmPhoneNumberBodyState();
}

class _ConfirmPhoneNumberBodyState extends State<ConfirmPhoneNumberBody> {
  bool canPressResendCode=true;

  void resendCode(){
    if(!canPressResendCode) {
      return ;
    }
    setState(() {
      canPressResendCode = false;
    });
    BlocProvider.of<ConfirmPhoneNumberBloc>(context).initialized();
    Future.delayed(const Duration(minutes: 1)).then((value) =>
        setState((){canPressResendCode = true;}));

  }

  @override
  Widget build(BuildContext context) {

    return Container();
  }
}
