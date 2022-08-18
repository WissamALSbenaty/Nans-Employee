import 'package:etloob/dependencies.dart';
import 'package:etloob/src/features/auth/controllers/login_controller/login_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: getIt<LoginBloc>()..initialized(),
      child: BlocBuilder<LoginBloc,LoginState>(
        builder: (ctx,state) {
          return const Scaffold(
          );
        },
      ),
    );
  }
}
