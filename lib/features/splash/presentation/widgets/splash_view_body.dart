import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_color.dart';
import '../../../../core/utils/assets.dart';
import '../../../../core/utils/styles.dart';
import '../on_boarding_view.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    goToOnBoarding();
  }

  goToOnBoarding() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).push(MaterialPageRoute(builder: (_) {
        return const OnboardingView();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: double.infinity,
        child: Text("comprehensive system disaster", style: TextStyle(fontSize: 20.sp, color: AppColor.kWhiteColor),),
        decoration: const BoxDecoration(
          color: AppColor.kOnboardingContainerColor,
        ),
      ),
    );
  }
}
