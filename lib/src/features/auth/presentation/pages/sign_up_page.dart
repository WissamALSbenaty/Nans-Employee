import 'package:easy_localization/easy_localization.dart';
import 'package:merit_driver/dependencies.dart';
import 'package:merit_driver/src/core/presentation/page_arguments/sign_up_page_arguments.dart';
import 'package:merit_driver/src/core/presentation/widgets/authentication_widget.dart';
import 'package:merit_driver/src/core/presentation/widgets/custom_check_box.dart';
import 'package:merit_driver/src/core/presentation/widgets/custom_sized_box.dart';
import 'package:merit_driver/src/core/presentation/widgets/custom_stepper_widget.dart';
import 'package:merit_driver/src/core/presentation/widgets/page_control_layer.dart';
import 'package:merit_driver/src/core/util/enums.dart';
import 'package:merit_driver/src/core/util/size_config.dart';
import 'package:merit_driver/src/core/presentation/theme_manager.dart';
import 'package:merit_driver/src/features/auth/controllers/register_controller/register_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class SignUpPage extends StatelessWidget{
  final SignUpPageArguments args;
  const SignUpPage({Key? key,required this.args}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
        value: getIt<RegisterBloc>(param1: args),
        child:  BlocBuilder<RegisterBloc,RegisterState>(
            builder: (ctx,state) => SignUpPageBody(canSignUp:  state is! Registering,args: args,))
    );
  }
}


class SignUpPageBody extends StatefulWidget {
  final bool canSignUp;
  final SignUpPageArguments args;
  const SignUpPageBody({Key? key,required this.canSignUp, required this.args}) : super(key: key);

  @override
  State<SignUpPageBody> createState() => _SignUpPageBodyState();
}

class _SignUpPageBodyState extends State<SignUpPageBody> {
  bool isAcceptedTerms=false;

  void toggleAcceptTerms(){
    setState(() {
      isAcceptedTerms=!isAcceptedTerms;
    });
  }

  @override
  Widget build(BuildContext context) {
    TextTheme theme=ThemeManager.textTheme;


    return  Scaffold(

        body: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              child: Stack(
                children: [
                  SingleChildScrollView(
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
                                  Text('Enter your information'.tr(),style:theme.headline5!.copyWith(fontWeight: FontWeight.w500),),
                                  const CustomSizedBox(height: 8,),
                                  Text('so we can verify that it belongs to you.'.tr(),style:theme.subtitle1,maxLines: 2,)
                                ],
                              ),
                            )
                          ],
                        ),
                        const CustomSizedBox(height: 32,),
                        CustomStepperWidget(currentStep: 1, totalSteps:widget.args.totalPages),
                        const CustomSizedBox(height: 32,),

                        AuthenticationWidget(
                          onFieldChange: [
                            BlocProvider.of<RegisterBloc>(context).changeUsername,
                            BlocProvider.of<RegisterBloc>(context).changePhoneNumber,
                            BlocProvider.of<RegisterBloc>(context).changeEmail,
                            BlocProvider.of<RegisterBloc>(context).changeLandlineNumber,
                          ],
                          fieldsHint: const ['User name','Phone number','Email','Landline number'],
                          fieldsPriority: const [TextFieldPriority.none,TextFieldPriority.none,TextFieldPriority.optional,TextFieldPriority.optional,],
                          fieldsType: const [TextInputType.emailAddress,TextInputType.phone,TextInputType.emailAddress,TextInputType.phone],
                        ),
                        const CustomSizedBox(height: 16,),
                        Row(
                          children: [
                            CustomCheckBox(isSelected: isAcceptedTerms, onPressed: toggleAcceptTerms),
                            const CustomSizedBox(width: 16),
                            Text('I agree to the terms and privacy policy'.tr(),style:theme.subtitle2!.copyWith(
                              fontWeight: FontWeight.bold,
                            ),)
                          ],
                        ),

                      ],
                    ),
                  ),

                  PageControlLayer(mainTitle: 'Next',
                    onMainButtonPressed:()=>BlocProvider.of<RegisterBloc>(context).registering(context),
                    isEnabledMainButton: widget.canSignUp,
                  ),
                ],
              ),
            ),
          ],));
  }
}
