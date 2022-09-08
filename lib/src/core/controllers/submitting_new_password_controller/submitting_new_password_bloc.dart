
import 'package:merit_driver/src/Data/Errors/auth_errors.dart';
import 'package:merit_driver/src/Data/Errors/custom_error.dart';
import 'package:merit_driver/src/Data/repositories/abstract/i_auth_repository.dart';
import 'package:merit_driver/src/core/presentation/page_arguments/submit_new_password_arguments.dart';
import 'package:merit_driver/src/core/presentation/snakebars/bottom_snack_bar.dart';
import 'package:merit_driver/src/core/util/enums.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'submitting_new_password_bloc.freezed.dart';
part 'submitting_new_password_state.dart';

@injectable
class SubmittingNewPasswordBloc extends Cubit< SubmittingNewPasswordState> {

  final IAuthRepository authRepository;
  final SubmitNewPasswordArguments args;
  SubmittingNewPasswordBloc(@factoryParam this.args,this.authRepository) : super( SubmittingNewPasswordState.initial());


  void passwordChanged(String password)async{
        emit (state.copyWith(password: password));
      }

  void confirmPasswordChanged(String confirmPassword)async{
        emit (state.copyWith(confirmPassword: confirmPassword));
      }

  void submitting(BuildContext context)async{
    if(state is Submitting) {
      return ;
    }

    emit(Submitting( password:state.password,confirmPassword:  state.confirmPassword));

        try {
          if(state.password!=state.confirmPassword) {
            throw UnConfirmedPasswordError();
          }

          await args.afterSubmittingNewPassword(state.password);

        }
        on CustomError catch(e){
          emit(SubmittingNewPassword( password:state.password,confirmPassword: state.confirmPassword));

          BottomSnackBar.show(e.errorMessage, ToastType.error);
        }
      }

}
