import 'package:flutter/material.dart';

import '../../../../core/utils/app_color.dart';
import '../../../../core/utils/styles.dart';

InkWell buildForgetPassText({void Function()? onTap}) {
  return InkWell(
    onTap: onTap,
    child: Align(
      alignment: Alignment.bottomRight,
      child: Text(
        'Forget Password?',
        style: Styles.textStyle12.copyWith(
          color: AppColor.kText2Color,
        ),
      ),
    ),
  );
}
