import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../core/utils/app_router.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kMyLogin);
      },
      child: Padding(
        padding:
            EdgeInsets.only(right: 24.w, top: 16.h, left: 328.w, bottom: 67.h),
        child: const Text(
          "Skip",
          style: Styles.textStyle17,
        ),
      ),
    );
  }
}
