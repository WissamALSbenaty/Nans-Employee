part of 'login_bloc.dart';

@freezed
 class LoginState with _$LoginState {
   factory LoginState.login({required String phoneNumber,required String password,}) = Login;
   factory LoginState.logging({required String phoneNumber,required String password,}) = Logging;

   factory LoginState.initial(){
     return LoginState.login(phoneNumber: "", password:"");
   }
}
