import 'package:auto_route/auto_route.dart';
import 'package:etloob/src/core/Data/models/login_model.dart';
import 'package:etloob/src/core/Data/models/register_model.dart';
import 'package:etloob/src/core/Data/repositories/abstract/i_auth_repository.dart';
import 'package:etloob/src/core/controllers/app_controller.dart';
import 'package:etloob/src/core/controllers/custom_form_controller.dart';
import 'package:etloob/src/core/presentation/auto_router.gr.dart';
import 'package:etloob/src/core/presentation/arguments/confirm_phone_number_page_arguments.dart';
import 'package:etloob/src/core/presentation/snakebars/bottom_snack_bar.dart';
import 'package:etloob/src/core/presentation/snakebars/snack_bar_messages.dart';
import 'package:etloob/src/core/util/enums.dart';
import 'package:etloob/src/core/util/extentions.dart';
import 'package:injectable/injectable.dart';

@injectable
class RegisterController extends CustomFormController{

  final IAuthRepository authRepository;
  final AppController appController;
  RegisterController(this.appController,this.authRepository):super(
    fieldsNumber: 5,

    submitFunction: (values)async{
      RegisterModel registerModel = RegisterModel(
          firstName: values[0]!,
          lastName: values[1]!,
          phoneNumber: values[2]!,
          password: values[3]!,
          referralCode: values[4],
      );
      await appController.register(registerModel);
     },

    afterSuccessSubmit: (values,context)async{
      RegisterModel registerModel = RegisterModel(
        firstName: values[0]!,
        lastName: values[1]!,
        phoneNumber: values[2]!,
        password: values[3]!,
        referralCode: values[4],
      );

      AutoRouter.of(context).push(ConfirmPhoneNumberPageRoute(args: ConfirmPhoneNumberPageArguments(
        phoneNumber:registerModel.phoneNumber,
        verificationReason: VerificationReason.VerifyAccount,
        afterSuccessSubmitting: ({required String otpCode,required String phoneNumber}) async{

          await appController.login(LoginModel(phoneNumber: registerModel.phoneNumber, password: registerModel.password));

          BottomSnackBar.show(SnackBarMessages.registeringSuccess, ToastType.success);

          context.clearData();
          AutoRouter.of(context).popUntilRoot();
          AutoRouter.of(context).replace(HomePageRoute());
        },

      )));
       }
  );
 }