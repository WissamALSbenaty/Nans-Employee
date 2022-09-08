import 'package:easy_localization/easy_localization.dart';
import 'package:merit_driver/dependencies.dart';
import 'package:merit_driver/src/core/controllers/confirm_phone_number_controller/confirm_phone_number_bloc.dart';
import 'package:merit_driver/src/core/presentation/page_arguments/confirm_phone_number_page_arguments.dart';
import 'package:merit_driver/src/core/presentation/widgets/custom_sized_box.dart';
import 'package:merit_driver/src/core/presentation/widgets/custom_stepper_widget.dart';
import 'package:merit_driver/src/core/presentation/widgets/page_control_layer.dart';
import 'package:merit_driver/src/core/presentation/widgets/verification_code_widget.dart';
import 'package:merit_driver/src/core/util/size_config.dart';
import 'package:merit_driver/src/core/presentation/theme_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ConfirmPhoneNumberPage extends StatelessWidget {

  final ConfirmPhoneNumberPageArguments args;
   const ConfirmPhoneNumberPage({Key? key, required this.args}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: getIt<ConfirmPhoneNumberBloc>(param1: args)..initialized(),
      child: BlocBuilder<ConfirmPhoneNumberBloc,ConfirmPhoneNumberState>(
        builder:(ctx,state) =>   ConfirmPhoneNumberBody(args: args,isEnabledVerifyButton: state is!Verifying),
      ),
    );
  }
}

class ConfirmPhoneNumberBody extends StatefulWidget{
  final ConfirmPhoneNumberPageArguments args;
  final bool isEnabledVerifyButton;
  const ConfirmPhoneNumberBody({Key? key, required this.args, required this.isEnabledVerifyButton}) : super(key: key);

  @override
  State<ConfirmPhoneNumberBody> createState() => _ConfirmPhoneNumberBodyState();
}

class _ConfirmPhoneNumberBodyState extends State<ConfirmPhoneNumberBody> {
  bool canPressResendCode=true;

  void resendCode(){
    if(!canPressResendCode) {
      return ;
    }
    setState(() {
      canPressResendCode = false;
    });
    BlocProvider.of<ConfirmPhoneNumberBloc>(context).initialized();
    Future.delayed(const Duration(minutes: 1)).then((value) =>
        setState((){canPressResendCode = true;}));

  }

  @override
  Widget build(BuildContext context) {
    TextTheme theme=ThemeManager.textTheme;
    bool isDarkMode = ThemeManager.isDarkMode;

    return Scaffold(
      body:Stack(
        fit: StackFit.expand,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: SizeConfig.w(16),vertical: SizeConfig.h(60)),
            child: Column(
              children: [
                const CustomSizedBox(height: 40,),
                Row(
                  children: [
                    const CustomSizedBox(width: 4,),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Enter your verification code.'.tr(),style:theme.headline5!.copyWith(
                             color: isDarkMode?null:ThemeManager.primaryColor,  fontWeight: FontWeight.w500),),
                          const CustomSizedBox(height: 8,),
                          Text('We send to you a verification code to your number pleas enter it here.'.tr(),
                            style:theme.subtitle1!.copyWith(color: isDarkMode? null: ThemeManager.black.shade200 ),maxLines: 2,)
                        ],
                      ),
                    )
                  ],
                ),
                const CustomSizedBox(height: 46,),

                const CustomStepperWidget(totalSteps:3,currentStep:2),
                const Spacer(),

                VerificationCodeWidget(),

              ],
            ),
          ),
          PageControlLayer(mainTitle: 'Verify',
          onMainButtonPressed: ()=>BlocProvider.of<ConfirmPhoneNumberBloc>(context).verifying(context),
            isEnabledMainButton:widget.isEnabledVerifyButton,

          )
        ],
      ) ,
    );
  }
}
