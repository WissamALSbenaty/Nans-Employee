import 'package:auto_route/annotations.dart';
import 'package:etloob/dependencies.dart';
import 'package:etloob/src/features/auth/controllers/submitting_phone_number_controller.dart';
import 'package:etloob/src/core/presentation/arguments/phone_number_submitting_arguments.dart';
import 'package:etloob/src/core/presentation/style.dart';
import 'package:etloob/src/core/presentation/widgets/custom_app_bar.dart';
import 'package:etloob/src/core/presentation/widgets/custom_sized_box.dart';
import 'package:etloob/src/core/presentation/widgets/main_button.dart';
import 'package:etloob/src/core/presentation/widgets/text_fields/phone_number_text_field.dart';
import 'package:etloob/src/core/util/extentions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class SubmitPhoneNumberPage extends StatefulWidget {

  final PhoneNumberSubmittingArguments args;
  const SubmitPhoneNumberPage({Key? key, required this.args}) : super(key: key);

  @override
  State<SubmitPhoneNumberPage> createState() => _SubmitPhoneNumberPageState();
}

class _SubmitPhoneNumberPageState extends State<SubmitPhoneNumberPage> {

  late SubmittingPhoneNumberController controller ;
  @override
  void initState() {
    controller=getIt<SubmittingPhoneNumberController>(param1: widget.args);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.formKey,
      child: Scaffold(
              backgroundColor:AppColors.whiteColor,
              appBar: CustomAppBar(
                context: context,
                barTitle:'Enter Your Phone Number',
              ),

              body: Observer(
                builder:(_)=> Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 16.w
                    ),
                    child:Column(
                        children: [
                          const CustomSizedBox(height: 96,),

                          Text(widget.args.pageTitle.translateWord,
                            style: AppStyle.textTheme.bodyMedium,textAlign: TextAlign.center,
                          ),

                          const CustomSizedBox(height: 57,),

                          PhoneNumberTextField(onChangedFunction:(value)=> controller.changeValue(0, value)) ,

                          const Spacer(),

                          MainButton(title: 'Continue',
                              isLoading:controller.isLoading,
                              onPressed:()=> controller.submitForm(context)),

                          const CustomSizedBox(height: 32,),
                        ])
                ),
              )),
    );
  }
}
