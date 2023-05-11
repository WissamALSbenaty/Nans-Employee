import 'package:auto_route/annotations.dart';
import 'package:nans/dependencies.dart';
import 'package:nans/src/features/auth/controllers/confirm_phone_number_controller.dart';
import 'package:nans/src/core/presentation/arguments/confirm_phone_number_page_arguments.dart';
import 'package:nans/src/core/presentation/style.dart';
import 'package:nans/src/core/presentation/widgets/custom_app_bar.dart';
import 'package:nans/src/core/presentation/widgets/custom_sized_box.dart';
import 'package:nans/src/core/presentation/widgets/main_button.dart';
import 'package:nans/src/core/presentation/widgets/text_fields/otp_text_field.dart';
import 'package:nans/src/core/util/extentions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class ConfirmPhoneNumberPage extends StatefulWidget {

  final ConfirmEmailPageArguments args;
  const ConfirmPhoneNumberPage({Key? key, required this.args}) : super(key: key);

  @override
  State<StatefulWidget> createState()=>_ConfirmPhoneNumberPageState();

}
class _ConfirmPhoneNumberPageState extends State<ConfirmPhoneNumberPage> {

  late ConfirmPhoneNumberController controller;
  bool canPressResendCode=true;

  @override
  void initState() {
    controller=getIt<ConfirmPhoneNumberController>(param1: widget.args);
    super.initState();
  }
  void resendCode(){
    if(!canPressResendCode) {
      return ;
    }
    setState(() {
      canPressResendCode = false;
    });
    controller.onInit();
    Future.delayed(const Duration(minutes: 1)).then((value) =>
        setState((){canPressResendCode = true;}));

  }

  @override
  Widget build(BuildContext context) {

    return Form(
      key: controller.formKey,
      child: Scaffold(
          backgroundColor:Colors.white,
          appBar: CustomAppBar(
            context: context,
            barTitle:'Confirm Your Phone Number',
          ),

          body: Observer(
            builder:(_)=> Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: 16.w
                ),
                child:Column(
                    children: [
                      const CustomSizedBox(height: 96,),

                      Text( "You will receive a code via sms... please use it to verify your email".translateWord,
                        style: AppStyle.textTheme.bodyMedium,textAlign: TextAlign.center,
                      ),

                      const CustomSizedBox(height: 57,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                              onTap:resendCode,
                              child: Text('Resend Code'.translateWord,
                                style: AppStyle.textTheme.bodyMedium!.copyWith(
                                    color: canPressResendCode? AppColors.blackColor.shade800:AppColors.blackColor.shade300,
                                    fontWeight: FontWeight.bold),))
                        ],
                      ),

                      const CustomSizedBox(height: 16,),

                      OtpTextField(onChangedFunction: (value)=>controller.changeValue(0,value),),

                      const Spacer(),

                      MainButton(title: 'Continue',
                          isLoading: controller.isLoading,
                          onPressed:()=> controller.submitForm(context)),

                      const CustomSizedBox(height: 32,),
                    ])
            ),
          )),
    );
  }
}
