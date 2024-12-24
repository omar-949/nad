import 'package:flutter/material.dart';

import '../utils/app_color.dart';
import '../utils/styles.dart';

class RatingBox extends StatelessWidget {
  const RatingBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Icon(
          Icons.star_rate_rounded,
          size: 13,
          color: AppColor.kRateIcon,
        ),
        Text(
          "4.7",
          style: Styles.textStyle12.copyWith(
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
