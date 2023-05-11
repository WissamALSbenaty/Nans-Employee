import 'package:nans/src/core/presentation/assets.dart';
import 'package:nans/src/core/presentation/validators/not_empty_validator.dart';
import 'package:nans/src/core/presentation/widgets/text_fields/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PasswordTextField extends StatefulWidget {
  final void Function(String?) onChangedFunction;
  final String title;
  const PasswordTextField({Key? key, required this.onChangedFunction, this.title='Password'}) : super(key: key);

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
    return CustomTextField(
      validator: NotEmptyValidator(),
      onChangedFunction: widget.onChangedFunction,
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
