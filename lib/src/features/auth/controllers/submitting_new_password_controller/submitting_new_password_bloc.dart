
import 'package:auto_route/auto_route.dart';
import 'package:etloob/src/Data/Errors/core_errors.dart';
import 'package:etloob/src/Data/Errors/custom_error.dart';
import 'package:etloob/src/Data/repositories/abstract/i_auth_repository.dart';
import 'package:etloob/src/Data/models/login_model.dart';
import 'package:etloob/src/core/presentation/auto_router.gr.dart';
import 'package:etloob/src/core/presentation/page_arguments/home_page_navigation_arguments.dart';
import 'package:etloob/src/core/presentation/snakebars/bottom_snack_bar.dart';
import 'package:etloob/src/core/presentation/snakebars/snack_bar_messages.dart';
import 'package:etloob/src/core/util/enums.dart';
import 'package:etloob/src/core/util/extentions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'submitting_new_password_bloc.freezed.dart';
part 'submitting_new_password_state.dart';

@injectable
class SubmittingNewPasswordBloc extends Cubit< SubmittingNewPasswordState> {

  final IAuthRepository authRepository;
  final String phoneNumber;
  SubmittingNewPasswordBloc(@factoryParam this.phoneNumber,this.authRepository) : super( SubmittingNewPasswordState.initial());


  void newPasswordChanged(String password)async{
        emit (state.copyWith(password: password));
      }

  void submitting(BuildContext context)async{
    if(state is Submitting) {
      return ;
    }

    emit(Submitting( password:state.password,));

        try {
          await authRepository.resetPassword(newPassword: state.password, phoneNumber: phoneNumber,);

          await authRepository.login(LoginModel(phoneNumber: phoneNumber, password: state.password,));

          BottomSnackBar.show(SnackBarMessages.successChangingPassword, ToastType.success);

          context.clearData();
          emit(SubmittingNewPassword( password:state.password,));
          AutoRouter.of(context).popUntilRoot();
          AutoRouter.of(context).replace(HomePageRoute(args: HomePageNavigationArguments()));
        }
        on CustomError catch(e){
          emit(SubmittingNewPassword( password:state.password,));

          BottomSnackBar.show(e.errorMessage, ToastType.error,
              onRetry: e is InternetConnectionError? ()=>submitting(context):null
          );
        }
      }

}
