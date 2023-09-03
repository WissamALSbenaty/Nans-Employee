import 'package:nans/src/core/controllers/custom_form_mixin.dart';
import 'package:nans/src/core/presentation/assets.dart';
import 'package:nans/src/core/presentation/validators/is_not_empty_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nans/src/core/presentation/widgets/text_fields/form_controller_text_field.dart';

class PasswordTextField extends StatefulWidget {
  final int fieldIndex;
  final CustomFormMixin formController;
  final String title;
  const PasswordTextField({Key? key,this.title="Password" ,required this.fieldIndex, required this.formController}) : super(key: key);

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {

  bool isObscurePassword=true;

  void toggleObscurePassword(){
    setState(() {
      isObscurePassword=!isObscurePassword;
    });
  }
  @override
  Widget build(BuildContext context) {
    return FormControllerTextField(
      fieldIndex: widget.fieldIndex,
      formController: widget.formController,
      validator: IsNotEmptyValidator(),
      title: widget.title,
      isObscureText:isObscurePassword,
      suffixIcon: Center(
        child: GestureDetector(
          onTap: toggleObscurePassword,
          child: SvgPicture.asset(
            isObscurePassword? Assets.hidePassword:Assets.showPassword,
            height: 24.r,
            width: 24.r,
          ),
        ),
      ),
    );
  }
}
