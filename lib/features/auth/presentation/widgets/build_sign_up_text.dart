import 'package:flutter/material.dart';

import '../../../../core/utils/app_color.dart';
import '../../../../core/utils/styles.dart';

Row buildSignUpText({void Function()? onTap}) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        'Don’t have an account? ',
        style: Styles.textStyle12.copyWith(
          color: AppColor.kText1Color,
        ),
      ),
      InkWell(
        onTap: onTap,
        child: Text(
          'Sign up',
          style: Styles.textStyle12.copyWith(color: AppColor.kIconsColor),
        ),
      ),
    ],
  );
}
