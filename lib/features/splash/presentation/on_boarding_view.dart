import 'package:course_app/core/utils/app_color.dart';
import 'package:course_app/features/splash/presentation/widgets/on_boarding_view_body.dart';
import 'package:flutter/material.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColor.kOnboardingContainerColor,
      body: SafeArea(
        child: OnboardingViewBody(),
      ),
    );
  }
}
