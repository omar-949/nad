import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/app_color.dart';

class NextButton extends StatelessWidget {
  const NextButton({super.key, this.onTap});

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onTap,
      backgroundColor: AppColor.kOnNextButtonColor,
      child: Icon(
        Icons.arrow_forward,
        size: 30.w,
        color: Colors.white,
      ),
    );
  }
}
