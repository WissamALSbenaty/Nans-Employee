import 'package:etloob/dependencies.dart';
import 'package:etloob/src/features/auth/controllers/register_controller/register_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class SignUpPage extends StatelessWidget{
  const SignUpPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
        value: getIt<RegisterBloc>()..initialized(),
    child:  BlocBuilder<RegisterBloc,RegisterState>(
    builder: (ctx,state) => SignUpPageBody(canSignUp:  state is! Registering,))
    );
  }
}


class SignUpPageBody extends StatefulWidget {
  final bool canSignUp;
  const SignUpPageBody({Key? key,required this.canSignUp}) : super(key: key);

  @override
  State<SignUpPageBody> createState() => _SignUpPageBodyState();
}

class _SignUpPageBodyState extends State<SignUpPageBody> {
  bool isAcceptedTerms=false;

  void toggleAcceptTerms(){
    setState(() {
      isAcceptedTerms=!isAcceptedTerms;
    });
  }

  @override
  Widget build(BuildContext context) {
      return const Scaffold(
      );
  }
}
