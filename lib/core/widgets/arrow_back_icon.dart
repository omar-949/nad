import 'package:flutter/material.dart';

import '../utils/app_color.dart';

class ArrowBackIcon extends StatelessWidget {
  const ArrowBackIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return const InkWell(
      // onTap: () {
      //   Navigator.of(context).pop();
      // },
      child: Icon(
        Icons.arrow_back_ios_new,
        size: 24,
        color: AppColor.kAppBarTitleColor,
      ),
    );
  }
}
