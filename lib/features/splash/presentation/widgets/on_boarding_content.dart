import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/app_color.dart';
import '../../../../core/utils/styles.dart';

class OnboardingContent extends StatelessWidget {
  final String title;
  final String subTitle;
  final VoidCallback? onTap;

  const OnboardingContent({
    super.key,
    required this.title,
    required this.subTitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 345.w,
      height: 170.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: AppColor.kOnboardingContainerColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: Styles.textStyle20,
          ),
          SizedBox(height: 10.h),
          Text(
            subTitle,
            style: Styles.textStyle16.copyWith(color: const Color(0xffFFC100)),
            maxLines: 5,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
