import 'package:easy_localization/easy_localization.dart';
import 'package:merit_driver/dependencies.dart';
import 'package:merit_driver/src/core/controllers/submitting_new_password_controller/submitting_new_password_bloc.dart';
import 'package:merit_driver/src/core/presentation/page_arguments/submit_new_password_arguments.dart';
import 'package:merit_driver/src/core/presentation/widgets/authentication_widget.dart';
import 'package:merit_driver/src/core/presentation/widgets/custom_sized_box.dart';
import 'package:merit_driver/src/core/presentation/widgets/custom_stepper_widget.dart';
import 'package:merit_driver/src/core/presentation/widgets/page_control_layer.dart';
import 'package:merit_driver/src/core/util/enums.dart';
import 'package:merit_driver/src/core/util/size_config.dart';
import 'package:merit_driver/src/core/presentation/theme_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SubmitNewPasswordPage extends StatelessWidget {

  final SubmitNewPasswordArguments args;
  const SubmitNewPasswordPage({Key? key,required this.args}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    TextTheme theme=ThemeManager.textTheme;
    bool isDarkMode = ThemeManager.isDarkMode;

    return BlocProvider.value(
      value: getIt<SubmittingNewPasswordBloc>(param1:args),
      child: BlocBuilder<SubmittingNewPasswordBloc,SubmittingNewPasswordState>(
        builder:(ctx,state)=>  Scaffold(

        body: Stack(

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
                        Text('Enter your password.'.tr(),style:theme.headline5!.copyWith(
                            color: isDarkMode?null:ThemeManager.primaryColor,fontWeight: FontWeight.w500),),
                        const CustomSizedBox(height: 8,),
                        Text('Make sure no one knows your password.'.tr(),style:theme.subtitle1!.copyWith(color: isDarkMode? null: ThemeManager.black.shade200),maxLines: 2,)
                      ],
                    ),
                  )
                ],
              ),
              const CustomSizedBox(height: 46,),

               CustomStepperWidget(totalSteps:args.totalPages,currentStep:args.currentPage),
              const CustomSizedBox(height: 32,),


              AuthenticationWidget(
                onFieldChange: [
                 BlocProvider.of<SubmittingNewPasswordBloc>(ctx).passwordChanged,
                 BlocProvider.of<SubmittingNewPasswordBloc>(ctx).confirmPasswordChanged,
                ],
                fieldsHint: const ['Password','Confirm Password'],
                fieldsPriority: const [TextFieldPriority.none,TextFieldPriority.none],
                fieldsType: const [TextInputType.visiblePassword,TextInputType.visiblePassword],
              ),

            ],
      ),
              ),
            PageControlLayer(mainTitle: 'Confirm',
                onMainButtonPressed:()=>BlocProvider.of<SubmittingNewPasswordBloc>(ctx).submitting(context),
                isEnabledMainButton: state is !Submitting,)
          ],
        ))));
  }
}
