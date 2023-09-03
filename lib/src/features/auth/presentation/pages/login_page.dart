import 'package:auto_route/auto_route.dart';
import 'package:nans/src/core/presentation/assets.dart';
import 'package:nans/src/core/presentation/widgets/custom_app_bar.dart';
import 'package:nans/src/core/presentation/widgets/custom_sized_box.dart';
import 'package:nans/src/core/presentation/widgets/main_button.dart';
import 'package:nans/src/core/presentation/widgets/text_fields/email_text_field.dart';
import 'package:nans/src/core/presentation/widgets/text_fields/password_text_field.dart';
import 'package:nans/src/core/util/mixins.dart';
import 'package:nans/src/features/auth/controllers/login_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>with StateControllerCreatorMixin<LoginController,LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: createdController.formKey,
      child: Observer(
        builder: (ctx) => Scaffold(
          backgroundColor:Colors.white,

          appBar:CustomAppBar(
            context: context,
            barTitle:'Login' ,
          ),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [

                Column(
                  children: [
                    Image.asset(Assets.logo,
                      height: 250.r,width: 250.r,
                    ),
                    const CustomSizedBox(height: 8,),

                    EmailTextField(fieldIndex: 0,formController: createdController,),
                    const CustomSizedBox(height: 16,),
                    PasswordTextField(fieldIndex: 1,formController: createdController,),
                  ],
                ),



                const Spacer(),

                Center(
                  child: MainButton(title: 'Login',
                      isLoading: createdController.isLoading,
                      onPressed: createdController.submitForm
                  ),
                ),

                const CustomSizedBox(height: 16,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
