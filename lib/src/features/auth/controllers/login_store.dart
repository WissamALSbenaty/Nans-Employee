


import 'package:nans/src/Data/models/login_model.dart';
import 'package:nans/src/Data/repositories/abstract/i_auth_repository.dart';
import 'package:nans/src/core/controllers/app_controller.dart';
import 'package:nans/src/core/controllers/base_controller.dart';
import 'package:nans/src/core/controllers/custom_form_mixin.dart';
import 'package:nans/src/core/presentation/auto_router.dart';
import 'package:injectable/injectable.dart';

@injectable
class LoginController extends BaseController with CustomFormMixin{

  final IAuthRepository authRepository;
  final AppController appController;
  LoginController(this.authRepository, this.appController,super.logger,){
    initForm(fieldsNumber: 2);
  }

  @override
  Future<void> afterSuccessSubmit() async{
    appRouter.popUntilRoot();
    appRouter.replace(const AuthRoute());
  }

  @override
  Future<void> submitFunction() async{
    await appController.login(LoginModel( email: currentValues[0]!, password: currentValues[1]! ));
  }


}