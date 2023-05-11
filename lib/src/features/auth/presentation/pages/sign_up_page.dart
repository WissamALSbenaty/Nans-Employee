import 'package:auto_route/auto_route.dart';
import 'package:nans/src/core/presentation/auto_router.dart';
import 'package:nans/src/core/presentation/style.dart';
import 'package:nans/src/core/presentation/validators/name_validator.dart';
import 'package:nans/src/core/presentation/widgets/custom_app_bar.dart';
import 'package:nans/src/core/presentation/widgets/custom_sized_box.dart';
import 'package:nans/src/core/presentation/widgets/main_button.dart';
import 'package:nans/src/core/presentation/widgets/text_fields/custom_text_field.dart';
import 'package:nans/src/core/presentation/widgets/text_fields/email_text_field.dart';
import 'package:nans/src/core/presentation/widgets/text_fields/password_text_field.dart';
import 'package:nans/src/core/presentation/widgets/text_fields/phone_number_text_field.dart';
import 'package:nans/src/core/util/extentions.dart';
import 'package:nans/src/core/util/mixins.dart';
import 'package:nans/src/features/auth/controllers/register_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


@RoutePage()
class SignUpPage extends StatelessWidget with WidgetStoreCreatorMixin<RegisterController>{
   SignUpPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
      return Form(
        key: createdStore.formKey,
        child: Scaffold(
          backgroundColor: Colors.white,

          appBar:CustomAppBar(
            context: context,
            barTitle: 'Create Account',
          ),

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
                      style:AppStyle.textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold) ,),
                  ],
                ),
                const CustomSizedBox(height: 8,),

                CustomTextField(
                  validator: NameValidator(),
                  title: 'Full name',
                  onChangedFunction: (value)=>createdStore.changeValue( 0,value),
                ),
                const CustomSizedBox(height: 8,),
                Row(
                  children: [
                    Expanded(
                      child: CustomTextField(
                        validator: NameValidator(),
                        title: 'Father name',
                        onChangedFunction: (value)=>createdStore.changeValue( 1,value),
                      ),
                    ),
                    const CustomSizedBox(width: 16,),
                    Expanded(
                      child: CustomTextField(
                        validator: NameValidator(),
                        title: 'Mother name',
                        onChangedFunction: (value)=>createdStore.changeValue( 2,value),
                      ),
                    ),
                  ],
                ),
                const CustomSizedBox(height: 8,),

                PhoneNumberTextField(onChangedFunction: (value)=>createdStore.changeValue( 3,value),),
                const CustomSizedBox(height: 8,),
                EmailTextField(onChangedFunction: (value)=>createdStore.changeValue( 4,value),),
                const CustomSizedBox(height: 8,),
                PasswordTextField(onChangedFunction: (value)=>createdStore.changeValue( 5,value),),
            ]),
                const CustomSizedBox(height: 16,),

                TextButton(
                    onPressed: ()=>AutoRouter.of(context).replace( LoginRoute()),
                    child: Text("Already have an account?".translateWord,
                        style: AppStyle.textTheme.titleMedium!.copyWith(color: Colors.blue,
                          fontWeight: FontWeight.bold,))
                ),


                const CustomSizedBox(height: 64,),
                Center(
                  child: MainButton(
                      title: 'Create Account',
                      isLoading:createdStore.isLoading,
                      onPressed: ()=>createdStore.submitForm( context)
                  ),
                ),

              const CustomSizedBox(height: 32,),



           ]),) ),
      );
  }
}
