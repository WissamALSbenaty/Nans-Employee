import 'package:easy_localization/easy_localization.dart';
import 'package:merit_driver/src/core/presentation/widgets/custom_text_field.dart';
import 'package:merit_driver/src/core/util/enums.dart';
import 'package:merit_driver/src/core/util/masked_formatter.dart';
import 'package:merit_driver/src/core/util/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../assets.dart';
import 'custom_sized_box.dart';

class AuthenticationWidget extends StatefulWidget {

  final String title;
  final List<String> fieldsHint;
  final List<TextInputType> fieldsType;
  final List<TextFieldPriority> fieldsPriority;
  final List<List<void Function(String)> > onFieldChange;

  const AuthenticationWidget({Key? key, required this.title,required this.fieldsHint, required this.fieldsType,required this.onFieldChange, required this.fieldsPriority}) : super(key: key);

  @override
  State<AuthenticationWidget> createState() => _AuthenticationWidgetState();
}

class _AuthenticationWidgetState extends State<AuthenticationWidget> {

  bool isObscurePassword=true;

  void toggleObscurePassword(){
    setState(() {
      isObscurePassword=!isObscurePassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const CustomSizedBox(width: 8,),
            Text(widget.title.tr(),
              style:Theme.of(context).textTheme.bodyText2!.copyWith(fontWeight: FontWeight.bold) ,),
          ],
        ),
        const CustomSizedBox(height: 8,),


        for(int i=0;i<widget.fieldsHint.length;i++)
        ...[  widget.fieldsType[i]==TextInputType.visiblePassword?
            CustomTextField(
              onChangedFunction: widget.onFieldChange[i][0],
              fieldPriority: widget.fieldsPriority[i],
              title: widget.fieldsHint[i],isObscureText:isObscurePassword,
              suffixIcon: Center(
                child: GestureDetector(
                  onTap: toggleObscurePassword,
                  child: SvgPicture.asset(
                    isObscurePassword? Assets.hidePassword:Assets.showPassword,
                    height: SizeConfig.h(24),
                    width: SizeConfig.h(24),
                  ),
                ),
              ),
            )
          :
            widget.fieldsType[i]==TextInputType.phone?
            CustomTextField(title: 'Phone Number',hint: "09xxxxxxxx",
                fieldPriority: widget.fieldsPriority[i],
                textInputType: TextInputType.phone,initialValue: "09",
                inputFormatter: MaskedInputFormatter('0000000000',),


                onChangedFunction: widget.onFieldChange[i][0])
              :
            widget.fieldsType[i]==TextInputType.emailAddress?
            CustomTextField(
                fieldPriority: widget.fieldsPriority[i],
                onChangedFunction: widget.onFieldChange[i][0],
                title: widget.fieldsHint[i])
                :
              Row(
                children: [
                  Expanded(
                    child: CustomTextField(
                      fieldPriority: widget.fieldsPriority[i],
                        title: 'First name',
                        onChangedFunction: widget.onFieldChange[i][0],
                    ),
                  ),
                  const CustomSizedBox(width: 16,),
                  Expanded(
                    child: CustomTextField(
                      fieldPriority: widget.fieldsPriority[i],
                      title: 'Last name',
                      onChangedFunction: widget.onFieldChange[i][1],
                    ),
                  ),
                ],
              )
          ,


          if(i!=widget.fieldsHint.length-1)
            const CustomSizedBox(height: 8,),
        ]
      ],
    );
  }
}
