import 'package:flutter/material.dart';
import '../utils/styles.dart';


class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hint,
    this.maxLiens = 1,
    this.onChanged,
    this.onSaved,
    this.obscureText = false,
    this.keyboardType, this.validator, this.prefixIcon,
  });

  final String hint;
  final int maxLiens;
  final void Function(String)? onChanged;
  final void Function(String?)? onSaved;
  final String? Function(String?)? validator;
  final bool obscureText;
  final TextInputType? keyboardType;
  final Widget? prefixIcon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      obscureText: obscureText,
      onSaved: onSaved,
      onChanged: onChanged,
      validator: validator,
      //     (value) {
      //   return null;
      //   // if(value?.isEmpty ?? true){
      //   //   return 'Field is Required';
      //   // }else{
      //   //   return null;
      //   // }
      // },
      maxLines: maxLiens,
      // cursorColor: AppColor.kFormFieldBorderColor,
      decoration: InputDecoration(
        hintText: hint,
        fillColor: Colors.white,
        filled: true,
        prefixIcon: prefixIcon,
        // hintStyle: Styles.textStyle10W400,
        contentPadding: const EdgeInsets.symmetric(horizontal: 10),
        hintStyle: Styles.textStyle14,
        border: buildOutlineInputBorder(const Color(0xff00000080).withOpacity(0.5)),
        enabledBorder: buildOutlineInputBorder(const Color(0xff00000080).withOpacity(0.5)),
        focusedBorder: buildOutlineInputBorder(const Color(0xff00000080).withOpacity(0.5)),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(
          color: color ?? Colors.white,
        ));
  }
}
