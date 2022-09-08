import 'package:merit_driver/src/core/presentation/theme_manager.dart';
import 'package:merit_driver/src/core/presentation/widgets/custom_text_field.dart';
import 'package:merit_driver/src/core/util/enums.dart';
import 'package:merit_driver/src/core/util/masked_formatter.dart';
import 'package:merit_driver/src/core/util/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../assets.dart';
import 'custom_sized_box.dart';

class AuthenticationWidget extends StatefulWidget {

  final List<String> fieldsHint;
  final List<TextInputType> fieldsType;
  final List<TextFieldPriority> fieldsPriority;
  final List<void Function(String)> onFieldChange;
  final List<String>? initialValues;

  const AuthenticationWidget({Key? key,required this.fieldsHint, required this.fieldsType,required this.onFieldChange, required this.fieldsPriority, this.initialValues}) : super(key: key);

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
    bool isDarkMode=ThemeManager.isDarkMode;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        for(int i=0;i<widget.fieldsHint.length;i++)
        ...[  widget.fieldsType[i]==TextInputType.visiblePassword?
            CustomTextField(
              onChangedFunction: widget.onFieldChange[i],
              fieldPriority: widget.fieldsPriority[i],
              title: widget.fieldsHint[i],isObscureText:isObscurePassword,
              initialValue: widget.initialValues?[i],
              suffixIcon: Center(
                child: GestureDetector(
                  onTap: toggleObscurePassword,
                  child: SvgPicture.asset(
                    isObscurePassword? Assets.hidePassword:Assets.showPassword,
                    height: SizeConfig.h(24),
                    width: SizeConfig.h(24),
                    color:isDarkMode?null:ThemeManager.black.shade200 ,
                  ),
                ),
              ),
            )
          :
            widget.fieldsType[i]==TextInputType.phone?
            CustomTextField(title: widget.fieldsHint[i],hint: "09xxxxxxxx",
                fieldPriority: widget.fieldsPriority[i],
                textInputType: TextInputType.phone,initialValue:widget.initialValues?[i]?? "09",
                inputFormatter: MaskedInputFormatter('0000000000',),


                onChangedFunction: widget.onFieldChange[i])
              :
            CustomTextField(
                fieldPriority: widget.fieldsPriority[i],
                textInputType: widget.fieldsType[i],
                onChangedFunction: widget.onFieldChange[i],
                initialValue: widget.initialValues?[i],
                title: widget.fieldsHint[i]),


          if(i!=widget.fieldsHint.length-1)
            const CustomSizedBox(height: 16,),
        ]
      ],
    );
  }
}
