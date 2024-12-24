import 'package:flutter/material.dart';

import '../../../../../core/utils/app_color.dart';
import '../../../../core/utils/styles.dart';

Row buildLogInText({void Function()? onTap}) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        'Already have an account? ',
        style: Styles.textStyle12.copyWith(
          color: AppColor.kText1Color,
        ),
      ),
      InkWell(
        onTap: onTap,
        child: Text(
          'Log In',
          style: Styles.textStyle12.copyWith(color: AppColor.kIconsColor),
        ),
      ),
    ],
  );
}
