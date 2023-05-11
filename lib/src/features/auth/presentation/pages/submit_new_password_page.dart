import 'package:auto_route/annotations.dart';
import 'package:nans/dependencies.dart';
import 'package:nans/src/core/presentation/arguments/submit_new_password_arguments.dart';
import 'package:nans/src/core/presentation/style.dart';
import 'package:nans/src/core/presentation/widgets/custom_app_bar.dart';
import 'package:nans/src/core/presentation/widgets/custom_sized_box.dart';
import 'package:nans/src/core/presentation/widgets/main_button.dart';
import 'package:nans/src/core/presentation/widgets/text_fields/password_text_field.dart';
import 'package:nans/src/core/util/extentions.dart';
import 'package:nans/src/features/auth/controllers/submitting_new_password_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class SubmitNewPasswordPage extends StatefulWidget {

  final SubmitNewPasswordArguments args;
  const SubmitNewPasswordPage({Key? key,required this.args}) : super(key: key);

  @override
  State<SubmitNewPasswordPage> createState() => _SubmitNewPasswordPageState();
}

class _SubmitNewPasswordPageState extends State<SubmitNewPasswordPage> {
  late SubmittingNewPasswordController controller;

  @override
  void initState() {
    controller=getIt<SubmittingNewPasswordController>(param1: widget.args);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.formKey,
      child: Observer(
          builder:(_)=> Scaffold(
          backgroundColor:Colors.white,
            appBar: CustomAppBar(
              context: context,
              barTitle:'Reset My Password',
            ),

            body: Padding(
          padding: EdgeInsets.symmetric(
          horizontal: 16.w
          ),
          child:Column(
            children: [
                const CustomSizedBox(height: 96,),

              Text('Enter Your New Password'.translateWord,
                style: AppStyle.textTheme.bodyMedium,textAlign: TextAlign.center,
              ),



              const CustomSizedBox(height: 57,),

               PasswordTextField(onChangedFunction: (value)=>controller.changeValue( 0,value),),

              const Spacer(),

              MainButton(title: 'Reset My Password',
                  isLoading:controller.isLoading,
                  onPressed:()=> controller.submitForm(context)),

              const CustomSizedBox(height: 32,),
              ])
          )
      )),
    );
  }
}
