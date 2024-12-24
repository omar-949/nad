import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/app_color.dart';

class FavouriteIcon extends StatelessWidget {
  const FavouriteIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
        radius: 16.r,
        backgroundColor: AppColor.kWhiteColor,
        child: const Icon(
          Icons.favorite,
          color: AppColor.kIconsColor,
          size: 24,
        ));
  }
}
