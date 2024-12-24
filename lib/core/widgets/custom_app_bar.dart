import 'package:flutter/material.dart';

import '../utils/app_color.dart';
import '../utils/styles.dart';
import 'arrow_back_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.style});

  final String title;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      forceMaterialTransparency: true,
      leading: const ArrowBackIcon(),
      centerTitle: true,
      title: Text(
        title,
        style: Styles.textStyle16
            .copyWith(color: AppColor.kBlackColor, fontWeight: FontWeight.w500),
      ),
    );
  }
}
