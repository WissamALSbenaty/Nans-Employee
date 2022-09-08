
// eRi_DhIA1EYKiM2e9Coqi8:APA91bHaVKUQm0796UXCzW07AiqwmzvCuasXZIcGVqlsQNKRVVLtnCSc7IcPxOL747FgZbbe8x4pbh1QCZSGzWozbRLfn0u3h9kOS3XVnFLCjSiBfWiiIwWEe1SBhWXI0V8GEb3sf-we

import 'package:merit_driver/dependencies.dart';
import 'package:merit_driver/src/Data/Errors/core_errors.dart';
import 'package:merit_driver/src/Data/Errors/custom_error.dart';
import 'package:merit_driver/src/Data/Errors/errors_factory.dart';
import 'package:merit_driver/src/Data/repositories/abstract/i_auth_repository.dart';
import 'package:merit_driver/src/Data/api_helper.dart';
import 'package:merit_driver/src/Data/local_database_tables/app_database.dart';
import 'package:merit_driver/src/Data/models/login_model.dart';
import 'package:merit_driver/src/Data/models/register_model.dart';
import 'package:merit_driver/src/Data/models/response_model.dart';
import 'package:merit_driver/src/core/util/analytics_manager.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:injectable/injectable.dart';


@Singleton(as: IAuthRepository)
class AuthRepository extends IAuthRepository{

  final AppDatabase localDatabase;
  final AnalyticsManager analyticsManager;
  AuthRepository(this.analyticsManager,this.localDatabase,ApiHelper apiHelper,):super(apiHelper);

  @override
  Future<void> register(RegisterModel registerModel)async{
    try{
        String? firebaseToken=await getFirebaseToken();

      await apiHelper.post(url:  'Auth/Register',isAuthenticated: false,
        formData:{
          'lastName':registerModel.lastName,
          'firstName':registerModel.firstName,
          'password':registerModel.password,
          'ReferralCode':registerModel.referralCode,
          'phone':registerModel.phoneNumber,
          'FireBaseToken':firebaseToken??'',
          'active':true,
          'typeId':3,
        });
    }
    on CustomError {
      rethrow ;
    }
    on Exception {
      throw SomethingWentWrongError();
    }
  }

  @override
  Future<void> login(LoginModel loginModel)async{

    try{
        String? firebaseToken=await getFirebaseToken();
    ResponseModel response=await apiHelper.post(url:  'Auth/login',isAuthenticated: false,
        formData:{
          'Phone':loginModel.phoneNumber,
          'password':loginModel.password,
          'FireBaseToken': firebaseToken??'',
        });
    Map<String,dynamic> data=response.data;

       FirebaseCrashlytics.instance.setUserIdentifier(loginModel.phoneNumber);
    setAuthLocalData(firstName:  data['firstName'],lastName: data['lastName'],
       phoneNumber: data['phone'],token: data['token'],
        password: loginModel.password,);
    }
    on CustomError {
      rethrow ;
    }
    on Exception {
      throw SomethingWentWrongError();
    }
  }

  @override
  Future<void> loginAsGuest() async{
    setAuthLocalData(firstName:'', lastName:'', phoneNumber:'', password:'', token:'',);
  }

  @override
  Future<void> logout()async{
    try{
        String? firebaseToken=await getFirebaseToken();

    List<Future> futures=[
     FirebaseMessaging.instance.deleteToken(),
      localDatabase.clearDatabase(),
      if(firebaseToken!=null)
      apiHelper.post(url: 'Auth/Logout', formData: {'FireBaseToken':firebaseToken,}),
    ];

    await Future.wait(futures);
      getIt<ApiHelper>().setToken('');
      }
      on CustomError {
      rethrow ;
    }
    on Exception {
    throw SomethingWentWrongError();
    }
  }

  @override
  Future<void> deleteAccount({required String userInputPassword})async{

    await Future.wait( [
      FirebaseMessaging.instance.deleteToken(),
      localDatabase.clearDatabase(),
      apiHelper.post(url: 'Auth/DeleteMyAccount', formData: {'Password':userInputPassword})]);
    getIt<ApiHelper>().setToken('');
  }

  @override
  Future<void> sendConfirmationCode(String phoneNumber)async{
     await apiHelper.get(url: 'Auth/SendConfirmationCode', parameters: {
      'username':phoneNumber,
    });
  }

  @override
  Future<void> checkConfirmationCode({required String phoneNumber,required String code})async{
     await apiHelper.get(url: 'Auth/CheckConfirmationCode', parameters: {
      'username':phoneNumber,
      'code':code,
    });

  }

  Future<void> setAuthLocalData(
      {required String firstName,
      required String lastName,
      required String phoneNumber,
      required String password,
      required String token,
      })async{
    getIt<ApiHelper>().setToken(token);
     List<Future> futures=[
       if(phoneNumber.isNotEmpty)
        analyticsManager.firebaseAnalytics.setUserId(id: phoneNumber),
        localDatabase.deleteUser(),
     ];

    await Future.wait(futures);


    localDatabase.insertUser(User(firstName: firstName,phoneNumber:phoneNumber,isLoggedInBefore: true,
        lastName: lastName,token: token,password: password));
  }

  @override
  Future<void> resetPassword({required String phoneNumber,required String newPassword,}) async{
    await apiHelper.post(url: 'Auth/ResetPassword', formData: {
      'Phone':phoneNumber,
      'NewPassword':newPassword,
    });
  }


  @override
  Future<void> refreshToken() async{
    try {
    ApiHelper tempHelper= ApiHelper(ErrorsFactory());

    User currentUser= await getIt<AppDatabase>().getUser();
    String? firebaseToken=await getFirebaseToken();

      ResponseModel response=await tempHelper.post(url:  'Auth/login',isAuthenticated: false,
          formData:{
            'Phone':currentUser.phoneNumber,
            'password':currentUser.password,
                'FireBaseToken': firebaseToken??'',
          });

      Map<String,dynamic> data=response.data;
      setAuthLocalData(firstName:  data['firstName'],lastName: data['lastName'],
      phoneNumber: data['phone'],token: data['token'],
      password: currentUser.password,);
      }  catch (e) {
    }
  }


  @override
  Future<void> changePhoneNumber({required String phoneNumber})async {
    User currentUser=await localDatabase.getUser();
    await apiHelper.post(url: 'Auth/EditPhone', formData: {
      'Phone':phoneNumber,
    });
    await setAuthLocalData(firstName:currentUser. firstName,
        lastName:currentUser.lastName,
        phoneNumber:phoneNumber,
        password:currentUser.password,
        token:currentUser.token,
        );
  }
}