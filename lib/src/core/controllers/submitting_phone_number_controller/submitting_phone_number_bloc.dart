import 'package:auto_route/auto_route.dart';
import 'package:etloob/src/Data/Errors/core_errors.dart';
import 'package:etloob/src/Data/Errors/custom_error.dart';
import 'package:etloob/src/Data/repositories/abstract/i_auth_repository.dart';
import 'package:etloob/src/core/presentation/auto_router.gr.dart';
import 'package:etloob/src/core/presentation/page_arguments/confirm_phone_number_page_arguments.dart';
import 'package:etloob/src/core/presentation/page_arguments/phone_number_submitting_arguments.dart';
import 'package:etloob/src/core/presentation/snakebars/bottom_snack_bar.dart';
import 'package:etloob/src/core/presentation/validators/is_phone_number_validator.dart';
import 'package:etloob/src/core/util/enums.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'submitting_phone_number_bloc.freezed.dart';
part 'submitting_phone_number_state.dart';

@injectable
class SubmittingPhoneNumberBloc extends Cubit< SubmittingPhoneNumberState> {

  final IAuthRepository authRepository;
  final PhoneNumberSubmittingArguments args;

  SubmittingPhoneNumberBloc(@factoryParam this.args,this.authRepository) : super( SubmittingPhoneNumberState.initial());

  void phoneNumberChanged (String phoneNumber)async{
    emit( state.copyWith(phoneNumber: phoneNumber));
  }

  void submitting (BuildContext context)async{
    if(state is Submitting) {
      return ;
    }
    try {
    IsPhoneNumberValidator().check(fieldName: 'Phone Number', toCheckString: state.phoneNumber);

    emit(Submitting(phoneNumber:state.phoneNumber,));

      emit(SubmittingPhoneNumberState(phoneNumber:state.phoneNumber,));
      await args.afterSubmittingPhoneNumber(phoneNumber: state.phoneNumber);

      AutoRouter.of(context).push(ConfirmPhoneNumberPageRoute(
          args: ConfirmPhoneNumberPageArguments(phoneNumber:  state.phoneNumber,
              isOtpFromBackend: args.isOtpFromBackend,resendOtpCodeCallback: args.resendOtpCodeCallback,

          afterSuccessSubmitting:args.afterSuccessVerification, pageTitle: args.otpPageTitle)));
    }
    on CustomError catch(e){
      emit(SubmittingPhoneNumberState(phoneNumber:state.phoneNumber,));
      BottomSnackBar.show(e.errorMessage, ToastType.error,
          onRetry: e is InternetConnectionError? ()=>submitting(context):null
      );
    }
  }


}
