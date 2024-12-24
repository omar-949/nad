import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'on_boarding_content.dart';

class OnboardingPage extends StatelessWidget {
  final String image;
  final String title;
  final String subTitle;
  final void Function()? onTap;

  const OnboardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: 357.w,
          height: 300.h,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(image),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Center(
            child: OnboardingContent(
              title: title,
              subTitle: subTitle,
              onTap: onTap,
            ),
          ),
        ),
      ],
    );
  }
}
