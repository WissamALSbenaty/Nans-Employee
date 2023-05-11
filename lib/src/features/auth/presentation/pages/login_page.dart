import 'package:auto_route/auto_route.dart';
import 'package:nans/src/core/presentation/auto_router.dart';
import 'package:nans/src/core/presentation/style.dart';
import 'package:nans/src/core/presentation/widgets/custom_app_bar.dart';
import 'package:nans/src/core/presentation/widgets/custom_sized_box.dart';
import 'package:nans/src/core/presentation/widgets/main_button.dart';
import 'package:nans/src/core/presentation/widgets/text_fields/email_text_field.dart';
import 'package:nans/src/core/presentation/widgets/text_fields/password_text_field.dart';
import 'package:nans/src/core/util/extentions.dart';
import 'package:nans/src/core/util/mixins.dart';
import 'package:nans/src/features/auth/controllers/login_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class LoginPage extends StatelessWidget with WidgetStoreCreatorMixin<LoginController>{
   LoginPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Form(
      key: createdStore.formKey,
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const CustomSizedBox(width: 8,),
                        Text('Use your phone number to login'.translateWord,
                          style:AppStyle.textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold) ,),
                      ],
                    ),
                    const CustomSizedBox(height: 8,),

                      EmailTextField(onChangedFunction:(value)=> createdStore.changeValue(0,value)),
                      const CustomSizedBox(height: 8,),
                      PasswordTextField(onChangedFunction:(value)=> createdStore.changeValue(1,value),)
                  ],
                ),

                    const CustomSizedBox(height: 24,),

                    TextButton(
                        onPressed: ()=>createdStore.restorePassword(ctx),
                        child: Text("I Forgot My Password !".translateWord,
                            style: AppStyle.textTheme.titleMedium!.copyWith(color: Colors.blue,
                              fontWeight: FontWeight.bold,))
                    ),

                    TextButton(

                        onPressed: ()=>AutoRouter.of(context).replace(const SignUpRoute()),
                        child: Text("I Dont have an account !".translateWord,
                            style: AppStyle.textTheme.titleMedium!.copyWith(color: Colors.blue,
                              fontWeight: FontWeight.bold,))
                    ),


                    const Spacer(),

                    Center(
                      child: MainButton(title: 'Login',
                          isLoading: createdStore.isLoading,
                          onPressed: ()=>createdStore.submitForm(context)
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
