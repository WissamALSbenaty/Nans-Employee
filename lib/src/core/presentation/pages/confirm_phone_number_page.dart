import 'package:easy_localization/easy_localization.dart';
import 'package:etloob/dependencies.dart';
import 'package:etloob/src/core/controllers/confirm_phone_number_controller/confirm_phone_number_bloc.dart';
import 'package:etloob/src/core/presentation/page_arguments/confirm_phone_number_page_arguments.dart';
import 'package:etloob/src/core/presentation/style.dart';
import 'package:etloob/src/core/presentation/widgets/custom_app_bar.dart';
import 'package:etloob/src/core/presentation/widgets/custom_sized_box.dart';
import 'package:etloob/src/core/presentation/widgets/custom_text_field.dart';
import 'package:etloob/src/core/presentation/widgets/main_button.dart';
import 'package:etloob/src/core/util/size_config.dart';
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
        builder:(ctx,state) =>   ConfirmPhoneNumberBody(args: args),
      ),
    );
  }
}

class ConfirmPhoneNumberBody extends StatefulWidget{
  final ConfirmPhoneNumberPageArguments args;
  const ConfirmPhoneNumberBody({Key? key, required this.args}) : super(key: key);

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

    return Scaffold(
        backgroundColor:AppColors.whiteColor,
        appBar: CustomAppBar(
          context: context,
          barTitle:'Confirm Your Phone Number',
        ),

        body: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.w(16)
            ),
            child:Column(
                children: [
                  const CustomSizedBox(height: 96,),

                  Text(widget.args.pageTitle.tr(),
                    style: AppStyle.textTheme.bodyText2,textAlign: TextAlign.center,
                  ),

                  const CustomSizedBox(height: 57,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                          onTap:resendCode,
                          child: Text('Resend Code'.tr(),
                            style: AppStyle.textTheme.bodyText2!.copyWith(
                                color: canPressResendCode? AppColors.blackColor.shade800:AppColors.blackColor.shade300,
                                fontWeight: FontWeight.bold),))
                    ],
                  ),

                  const CustomSizedBox(height: 16,),

                  CustomTextField(title: 'Verify Mobile Number',textInputType: TextInputType.number,
                    onChangedFunction: (value)=>BlocProvider.of<ConfirmPhoneNumberBloc>(context).codeChanged(value),),

                  const Spacer(),

                  MainButton(title: 'Continue',
                      enabled: BlocProvider.of<ConfirmPhoneNumberBloc>(context).state is! Verifying,
                      onPressed:()=> BlocProvider.of<ConfirmPhoneNumberBloc>(context).verifying( context)),

                  const CustomSizedBox(height: 32,),
                ])
        ));
  }
}
