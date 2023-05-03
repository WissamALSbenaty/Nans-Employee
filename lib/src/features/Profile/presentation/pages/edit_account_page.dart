
import 'package:auto_route/auto_route.dart';
import 'package:etloob/src/core/controllers/app_controller.dart';
import 'package:etloob/src/core/presentation/assets.dart';
import 'package:etloob/src/core/presentation/auto_router.dart';
import 'package:etloob/src/core/presentation/dialogs/custom_text_field_dialog.dart';
import 'package:etloob/src/core/presentation/arguments/phone_number_submitting_arguments.dart';
import 'package:etloob/src/core/presentation/arguments/submit_new_password_arguments.dart';
import 'package:etloob/src/core/presentation/style.dart';
import 'package:etloob/src/core/presentation/validators/not_empty_validator.dart';
import 'package:etloob/src/core/presentation/widgets/custom_app_bar.dart';
import 'package:etloob/src/core/util/enums.dart';
import 'package:etloob/src/core/util/mixins.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class EditAccountPage extends StatefulWidget with WidgetStoreCreatorMixin<AppController> {



   EditAccountPage({Key? key}) : super(key: key);

  @override
  State<EditAccountPage> createState() => _EditAccountPageState();
}

class _EditAccountPageState extends State<EditAccountPage> {
  final List<String> titles=['Change My Phone Number','Change My Password',];

  final List<String> iconPaths=[Assets.phoneNumber,Assets.changePassword,];

  late List<void Function(BuildContext context)>onActionsPressed;
  bool isFirstDependency=true;

  @override
  void didChangeDependencies(){
    if(isFirstDependency){
      isFirstDependency=false;
      onActionsPressed=[
            (ctx)=> AutoRouter.of(ctx).push(SubmitPhoneNumberRoute(args: PhoneNumberSubmittingArguments(
          pageTitle:'Please enter your new phone number' ,
          verificationReason: VerificationReason.ChangePhoneNumber,
          afterSubmittingPhoneNumber: ({required String phoneNumber}) async{
          },
          afterSuccessVerification:({required String phoneNumber,required String otpCode})async{
            widget.createdStore.changePhoneNumber(phoneNumber,ctx);
          },
        ))),

            (ctx){
          showDialog(context: ctx,
              builder: (ctx)=>CustomTextFieldDialog(title: 'Are You Sure ?',
                  dialogTextContent:'Please Enter Your Password',
                  mainActionText: 'Continue',
                  textFieldValidator: NotEmptyValidator(),
                  textFieldTitle: 'Password',
                  onMainActionPressed:(String passwordValue)async {
                    AutoRouter.of(ctx).push(
                        SubmitNewPasswordRoute(args: SubmitNewPasswordArguments(
                          onSubmitNewPassword: (String newPassword) =>
                              widget.createdStore.changePassword(oldPassword: passwordValue, newPassword: newPassword),
                        )
                        ));
                  }));
        },
      ];
    }
    super.didChangeDependencies();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar:CustomAppBar(
              barTitle: 'Edit Account',
              context: context,
            ),

            backgroundColor: AppColors.blue,

            body: SingleChildScrollView(
              padding: EdgeInsets.all(16.r,),
              child: Column(
                children:  [
                  for(int i=0;i<titles.length;i++)
                    ...[
                      /*RouteOptionCard(onPressed: ()=>onActionsPressed[i](context),
                          title:titles[i],iconPath:iconPaths[i],
                          iconColor:AppColors.blackColor.shade100),
                      const CustomSizedBox(height: 16,),

                       */
                    ],
                ],
              ),
            ),
    );
  }
}
