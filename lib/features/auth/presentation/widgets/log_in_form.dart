import 'package:course_app/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/app_color.dart';

import '../../../../core/utils/app_router.dart';
import '../../../../core/utils/styles.dart';
import '../../../../core/widgets/custom_button.dart';import 'build_forget_pass_text.dart';
import 'build_sign_up_text.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: buildBoxDecoration(),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Email',
              style: Styles.textStyle14,
            ),
            10.verticalSpace,
            CustomTextFormField(
              prefixIcon: buildIcon(),
              hint: 'Enter your Email',
            ),
            20.verticalSpace,
            const Text(
              'Password',
              style: Styles.textStyle14,
            ),
            10.verticalSpace,
            const CustomTextFormField(
              prefixIcon: Icon(
                Icons.lock,
                color: AppColor.kHintColor,
              ),
              hint: 'Enter your Password',
            ),
            10.verticalSpace,
            buildForgetPassText(
              onTap: () {
                GoRouter.of(context).push(AppRouter.kForgetPassView);
              },
            ),
            30.verticalSpace,
            CustomButton(
              text: 'LOGIN',
              onTap: () {
              },
              style: Styles.textStyle20,
            ),
            20.verticalSpace,
            buildSignUpText(
              onTap: () {
                GoRouter.of(context).push(AppRouter.kSignUpView);
              },
            ),
          ],
        ),
      ),
    );
  }

  Icon buildIcon() {
    return const Icon(
      Icons.email_outlined,
      size: 30,
      color: Colors.grey,
    );
  }

  BoxDecoration buildBoxDecoration() {
    return BoxDecoration(
      color: AppColor.kLoginConColor,
      borderRadius: BorderRadius.circular(16.r),
    );
  }
}
/////
