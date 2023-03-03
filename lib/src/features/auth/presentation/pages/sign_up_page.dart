import 'package:auto_route/auto_route.dart';
import 'package:etloob/src/core/Data/Errors/auth_errors.dart';
import 'package:etloob/src/core/presentation/auto_router.gr.dart';
import 'package:etloob/src/core/presentation/snakebars/bottom_snack_bar.dart';
import 'package:etloob/src/core/presentation/style.dart';
import 'package:etloob/src/core/presentation/validators/name_validator.dart';
import 'package:etloob/src/core/presentation/widgets/custom_sized_box.dart';
import 'package:etloob/src/core/presentation/widgets/main_button.dart';
import 'package:etloob/src/core/presentation/widgets/text_fields/custom_text_field.dart';
import 'package:etloob/src/core/presentation/widgets/text_fields/password_text_field.dart';
import 'package:etloob/src/core/presentation/widgets/text_fields/phone_number_text_field.dart';
import 'package:etloob/src/core/util/enums.dart';
import 'package:etloob/src/core/util/extentions.dart';
import 'package:etloob/src/core/util/mixins.dart';
import 'package:etloob/src/features/auth/controllers/register_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class SignUpPage extends StatelessWidget  with WidgetStoreCreatorMixin<RegisterController>{
   SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return Form(
        key: createdStore.formKey,
        child: Scaffold(
          backgroundColor: AppColors.whiteColor,



          body: SingleChildScrollView(
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
                    Text('Please fill up the form'.translateWord,
                      style:AppStyle.textTheme.bodyText2!.copyWith(fontWeight: FontWeight.bold) ,),
                  ],
                ),
                const CustomSizedBox(height: 8,),

                Row(
                  children: [
                    Expanded(
                      child: CustomTextField(
                        validator: NameValidator(),
                        title: 'First name',
                        onChangedFunction: (value)=>createdStore.changeValue( 0,value),
                      ),
                    ),
                    const CustomSizedBox(width: 16,),
                    Expanded(
                      child: CustomTextField(
                        validator: NameValidator(),
                        title: 'Last name',
                        onChangedFunction: (value)=>createdStore.changeValue( 1,value),
                      ),
                    ),
                  ],
                ),
                const CustomSizedBox(height: 8,),

                PhoneNumberTextField(onChangedFunction: (value)=>createdStore.changeValue( 2,value),),
                const CustomSizedBox(height: 8,),
                PasswordTextField(onChangedFunction: (value)=>createdStore.changeValue( 3,value),),
            ]),

                const CustomSizedBox(height: 8,),
                CustomTextField(
                  fieldPriority: TextFieldPriority.optional,
                   onChangedFunction:(value)=>createdStore.changeValue( 4,value),
                    title: 'Referral Code',
                    validator: null,
                ),
                const CustomSizedBox(height: 4,),
                Text('Get a referral code from a friend who has this app to get extra points'.translateWord,
                style: AppStyle.textTheme.subtitle1!.copyWith(color: AppColors.blackColor.shade400),),


                TextButton(
                    onPressed: ()=>AutoRouter.of(context).replace( LoginPageRoute()),
                    child: Text("Already have an account?".translateWord,
                        style: AppStyle.textTheme.subtitle1!.copyWith(color: Colors.blue,
                          fontWeight: FontWeight.bold,))
                ),


                const CustomSizedBox(height: 64,),
                Center(
                  child: MainButton(
                      title: 'Create Account',
                      isLoading:createdStore.isLoading,
                      onPressed: ()=>createdStore.submitForm( context),
                      ),
                ),

              const CustomSizedBox(height: 32,),

/*                 const CustomSizedBox(
                  height: 32,
                ),
                Text(
                  'Or Sign Up via social media'.translateWord,
                  textAlign: TextAlign.center,
                  style: AppStyle.textTheme.bodyText2!
                      .copyWith(color: AppColors.blackColor.shade600),
                ),
               const CustomSizedBox(
                  height: 16,
                ),
                GestureDetector(

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

                        Text('Sign up via google'.translateWord,
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

                        Text('Sign up via facebook'.translateWord,
                            style: AppStyle.textTheme.bodyText2!.copyWith(color: AppColors.blackColor.shade600)),

                      ],
                    ),
                  ),
                ),*/


           ]),) ),
      );
  }
}
