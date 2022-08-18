import 'package:easy_localization/easy_localization.dart';
import 'package:etloob/dependencies.dart';
import 'package:etloob/src/core/controllers/submitting_phone_number_controller/submitting_phone_number_bloc.dart';
import 'package:etloob/src/core/presentation/style.dart';
import 'package:etloob/src/core/presentation/widgets/custom_app_bar.dart';
import 'package:etloob/src/core/presentation/widgets/custom_sized_box.dart';
import 'package:etloob/src/core/presentation/widgets/custom_text_field.dart';
import 'package:etloob/src/core/presentation/widgets/main_button.dart';
import 'package:etloob/src/core/util/masked_formatter.dart';
import 'package:etloob/src/core/util/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../page_arguments/phone_number_submitting_arguments.dart';

class SubmitPhoneNumberPage extends StatelessWidget {

  final PhoneNumberSubmittingArguments args;
  const SubmitPhoneNumberPage({Key? key, required this.args}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: getIt<SubmittingPhoneNumberBloc>(param1: args),
      child: BlocBuilder<SubmittingPhoneNumberBloc,SubmittingPhoneNumberState>(
        builder:(ctx,state)=> Scaffold(
            backgroundColor:AppColors.whiteColor,
            appBar: CustomAppBar(
              context: context,
              barTitle:'Enter Your Phone Number',
            ),

            body: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.w(16)
                ),
                child:Column(
                    children: [
                      const CustomSizedBox(height: 96,),

                      Text(args.pageTitle.tr(),
                        style: AppStyle.textTheme.bodyText2,textAlign: TextAlign.center,
                      ),

                      const CustomSizedBox(height: 57,),

                      CustomTextField(title: 'Phone Number',hint: "09xxxxxxxx",
                          textInputType: TextInputType.phone,initialValue: "09",
                          inputFormatter: MaskedInputFormatter('0000000000',),
                          onChangedFunction: (value)=>BlocProvider.of<SubmittingPhoneNumberBloc>(ctx).phoneNumberChanged( value)) ,

                      const Spacer(),

                      MainButton(title: 'Continue',
                          enabled: state is! Submitting,
                          onPressed:()=> BlocProvider.of<SubmittingPhoneNumberBloc>(ctx).submitting( context)),

                      const CustomSizedBox(height: 32,),
                    ])
            )),
      ),
    );
  }
}
