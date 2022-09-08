
import 'package:merit_driver/dependencies.dart';
import 'package:merit_driver/src/Data/Errors/core_errors.dart';
import 'package:merit_driver/src/Data/Errors/custom_error.dart';
import 'package:merit_driver/src/Data/repositories/abstract/i_auth_repository.dart';
import 'package:merit_driver/src/core/presentation/page_arguments/confirm_phone_number_page_arguments.dart';
import 'package:merit_driver/src/core/presentation/snakebars/bottom_snack_bar.dart';
import 'package:merit_driver/src/core/util/enums.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'confirm_phone_number_bloc.freezed.dart';
part 'confirm_phone_number_state.dart';

@injectable
class ConfirmPhoneNumberBloc extends Cubit< ConfirmPhoneNumberState> {

  final IAuthRepository authRepository;
  final ConfirmPhoneNumberPageArguments args;
  ConfirmPhoneNumberBloc(@factoryParam this.args,this.authRepository) : super( ConfirmPhoneNumberState.initial());


  void initialized()async{
    try {
        if(args.isOtpFromBackend) {
          await authRepository.sendConfirmationCode(args.phoneNumber);
        }
        else {
          await args.resendOtpCodeCallback!(phoneNumber: args.phoneNumber);
        }
    }
    on CustomError catch (e){
      getIt<BottomSnackBar>().show(e.errorMessage, ToastType.error);
    }
    emit(Submitting(code:state.code ));
    }

  void codeChanged(String code)async{
        emit( Submitting(code: code));
      }

  void verifying(BuildContext context)async{
    if(state is Verifying) {
      return ;
    }

    emit(Verifying(code: state.code));

        try {
          if(args.isOtpFromBackend) {
            await authRepository.checkConfirmationCode(code: state.code, phoneNumber: args.phoneNumber,);
          }


         await args.afterSuccessSubmitting(otpCode: state.code,phoneNumber: args.phoneNumber);
        emit(ConfirmPhoneNumberState.submitting(code: state.code));

        }
        on CustomError catch(e){
          emit(ConfirmPhoneNumberState.submitting(code: state.code));
          getIt<BottomSnackBar>().show(e.errorMessage, ToastType.error,
              onRetry: e is InternetConnectionError? ()=>verifying(context):null
          );
        }
      }

}
