import 'package:easy_localization/easy_localization.dart';
import 'package:merit_driver/dependencies.dart';
import 'package:merit_driver/src/core/controllers/submitting_phone_number_controller/submitting_phone_number_bloc.dart';
import 'package:merit_driver/src/core/presentation/widgets/custom_sized_box.dart';
import 'package:merit_driver/src/core/presentation/widgets/custom_stepper_widget.dart';
import 'package:merit_driver/src/core/presentation/widgets/custom_text_field.dart';
import 'package:merit_driver/src/core/presentation/widgets/page_control_layer.dart';
import 'package:merit_driver/src/core/util/size_config.dart';
import 'package:merit_driver/src/core/presentation/theme_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../page_arguments/phone_number_submitting_arguments.dart';

class SubmitPhoneNumberPage extends StatelessWidget {

  final PhoneNumberSubmittingArguments args;
  const SubmitPhoneNumberPage({Key? key, required this.args}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    TextTheme theme=ThemeManager.textTheme;


    return BlocProvider.value(
      value: getIt<SubmittingPhoneNumberBloc>(param1: args),
      child: BlocBuilder<SubmittingPhoneNumberBloc,SubmittingPhoneNumberState>(
        builder:(ctx,state)=>  Scaffold(

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
                            Text(args.pageTitle.tr(),style:theme.headline5!.copyWith(fontWeight: FontWeight.w500),),
                            const CustomSizedBox(height: 8,),
                            Text('We will send to you a verification code to your number.'.tr(),style:theme.subtitle1,maxLines: 2,)
                          ],
                        ),
                      )
                    ],
                  ),
                  const CustomSizedBox(height: 46,),

                  const CustomStepperWidget(totalSteps:3,currentStep:1),
                  const CustomSizedBox(height: 30,),

                  CustomTextField(
                      title: 'Phone number',
                      onChangedFunction: BlocProvider.of<SubmittingPhoneNumberBloc>(ctx).phoneNumberChanged),
                ],
              ),
            ),
            PageControlLayer(mainTitle: 'Next',
                onMainButtonPressed: ()=>BlocProvider.of<SubmittingPhoneNumberBloc>(ctx).submitting(context),
                isEnabledMainButton: state is! Submitting ,
            )
          ],
        ) ,
      ),
    ));
  }
}
