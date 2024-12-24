import 'package:course_app/features/splash/presentation/widgets/skip_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'next_button.dart';
import 'on_boarding_page_indecator.dart';
import 'on_boarding_page_view.dart';

class OnboardingViewBody extends StatefulWidget {
  const OnboardingViewBody({super.key});

  @override
  State<OnboardingViewBody> createState() => _OnboardingViewBodyState();
}

class _OnboardingViewBodyState extends State<OnboardingViewBody> {
  final PageController controller = PageController();
  int _currentPage = 0;

  void nextPage() {
    if (_currentPage < 2) {
      controller.nextPage(
        duration: const Duration(milliseconds: 100),
        curve: Curves.easeInCirc,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SkipButton(),
        SizedBox(
          height: 550.h,
          width: 370.w,
          child: OnboardingPageView(
            onTap: nextPage,
            controller: controller,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
          ),
        ),
        Expanded(
          child: SizedBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                OnboardingPageIndicator(controller: controller),
                NextButton(
                  onTap: nextPage,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
