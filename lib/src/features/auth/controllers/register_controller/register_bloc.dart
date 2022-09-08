
import 'package:merit_driver/src/Data/Errors/custom_error.dart';
import 'package:merit_driver/src/Data/models/sign_up_model.dart';
import 'package:merit_driver/src/Data/repositories/abstract/i_auth_repository.dart';
import 'package:merit_driver/src/core/presentation/page_arguments/sign_up_page_arguments.dart';
import 'package:merit_driver/src/core/presentation/snakebars/bottom_snack_bar.dart';
import 'package:merit_driver/src/core/presentation/validators/is_phone_number_validator.dart';
import 'package:merit_driver/src/core/presentation/validators/not_empty_validator.dart';
import 'package:merit_driver/src/core/util/enums.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'register_bloc.freezed.dart';
part 'register_state.dart';

@injectable
class RegisterBloc extends Cubit< RegisterState> {

  final IAuthRepository authRepository;
  final SignUpPageArguments args;
  RegisterBloc(@factoryParam this.args, this.authRepository) : super( RegisterState.initial());

    void registering(BuildContext context)async{
      if(state is Registering) {
        return ;
      }

      emit(Registering(phoneNumber:state.phoneNumber,email: state.email,
        username: state.username,landlineNumber: state.landlineNumber,));
      try {

        NotEmptyValidator().check(fieldName: 'User name', toCheckString: state.username);
        IsPhoneNumberValidator().check(fieldName: 'Phone Number', toCheckString: state.phoneNumber);


        emit(RegisterState(phoneNumber:state.phoneNumber,email: state.email,
          username: state.username,landlineNumber: state.landlineNumber,));

       args.afterSignUp(SignUpModel(phoneNumber:state.phoneNumber , username:state.username ,
             email:state.email ,landlineNumber:state.landlineNumber ));
      }
      on CustomError catch(e){
        emit(RegisterState(phoneNumber:state.phoneNumber,email: state.email,
          username: state.username,landlineNumber: state.landlineNumber,));

        BottomSnackBar.show(e.errorMessage, ToastType.error,);
      }

      }


    void changeLandlineNumber (String landlineNumber) {
        emit( state.copyWith(landlineNumber: landlineNumber));
      }

    void changeUsername  (String username){
        emit( state.copyWith(username: username));
      }


    void changePhoneNumber (String phoneNumber){
        emit( state.copyWith(phoneNumber: phoneNumber.replaceAll('+963', '0')));
      }

    void changeEmail (String email){
        emit( state.copyWith(email: email));
      }

}
