import 'package:auto_route/auto_route.dart';
import 'package:etloob/src/core/presentation/auto_router.gr.dart';
import 'package:etloob/src/core/presentation/style.dart';
import 'package:etloob/src/core/presentation/widgets/custom_sized_box.dart';
import 'package:etloob/src/core/presentation/widgets/main_button.dart';
import 'package:etloob/src/core/presentation/widgets/text_fields/password_text_field.dart';
import 'package:etloob/src/core/presentation/widgets/text_fields/phone_number_text_field.dart';
import 'package:etloob/src/core/util/extentions.dart';
import 'package:etloob/src/core/util/mixins.dart';
import 'package:etloob/src/features/auth/controllers/login_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class LoginPage extends StatelessWidget with WidgetStoreCreatorMixin<LoginController>{
   LoginPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Form(
      key: createdStore.formKey,
      child: Observer(
          builder: (ctx) => Scaffold(
              backgroundColor:AppColors.whiteColor,

              body: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [

                   Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const CustomSizedBox(width: 8,),
                        Text('Use your phone number to login'.translateWord,
                          style:AppStyle.textTheme.bodyText2!.copyWith(fontWeight: FontWeight.bold) ,),
                      ],
                    ),
                    const CustomSizedBox(height: 8,),

                      PhoneNumberTextField(onChangedFunction:(value)=> createdStore.changeValue(0,value)),
                      const CustomSizedBox(height: 8,),
                      PasswordTextField(onChangedFunction:(value)=> createdStore.changeValue(1,value),)
                  ],
                ),

                    const CustomSizedBox(height: 24,),

                    TextButton(
                        onPressed: ()=>createdStore.restorePassword(ctx),
                        child: Text("I Forgot My Password !".translateWord,
                            style: AppStyle.textTheme.subtitle1!.copyWith(color: Colors.blue,
                              fontWeight: FontWeight.bold,))
                    ),

                    TextButton(

                        onPressed: ()=>AutoRouter.of(context).replace(const SignUpPageRoute()),
                        child: Text("I Dont have an account !".translateWord,
                            style: AppStyle.textTheme.subtitle1!.copyWith(color: Colors.blue,
                              fontWeight: FontWeight.bold,))
                    ),


                    const Spacer(),

                    Center(
                      child: MainButton(title: 'Login',
                          isLoading: createdStore.isLoading,
                          onPressed: ()=>createdStore.submitForm(context)
                      ),
                    ),

                   const CustomSizedBox(height: 32,),
/*

                  Text('Or login via social media'.translateWord,textAlign: TextAlign.center,
                    style: AppStyle.textTheme.bodyText2!.copyWith(color: AppColors.blackColor.shade600),
                  ),

                const CustomSizedBox(height: 16,),

                GestureDetector(
                  onTap: (){},
                  child: Container(
                    width: w(291),
                    height: h(56),
                    decoration: BoxDecoration(
                      color:AppColors.pink,
                      borderRadius: BorderRadius.circular(18),
                    ),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(Assets.google,height: h(40),width: h(40),),
                        const CustomSizedBox(width: 16,),

                        Text('Login via google'.translateWord,
                            style:  AppStyle.textTheme.bodyText2!.copyWith(color: AppColors.blackColor.shade600)),

                      ],
                    ),
                  ),
                ),

                const CustomSizedBox(height: 16,),

                GestureDetector(
                    onTap: (){},
                    child: Container(
                      width: w(291),
                      height: h(56),
                      decoration: BoxDecoration(
                        color:AppColors.blue,
                        borderRadius: BorderRadius.circular(18),
                      ),

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(Assets.facebook,height: h(40),width: h(40),),
                          const CustomSizedBox(width: 16,),

                          Text('Login via facebook'.translateWord,
                            style: AppStyle.textTheme.bodyText2!.copyWith(color: AppColors.blackColor.shade600)),

                        ],
                      ),
                    ),
                  ),*/

                  ],
                ),
              ),
            ),
        ),
    );
  }
}
