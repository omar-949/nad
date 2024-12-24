import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utils/app_color.dart';
import '../../../../core/utils/styles.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../../../core/widgets/custom_text_form_field.dart';
import 'build_log_in_text.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

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
              'User Name',
              style: Styles.textStyle14,
            ),
            10.verticalSpace,
            const CustomTextFormField(
              prefixIcon: Icon(Icons.person,color: AppColor.kHintColor,),
              hint: 'Enter your name',
            ),
            20.verticalSpace,
            const Text(
              'Password',
              style: Styles.textStyle14,
            ),
            10.verticalSpace,
             const CustomTextFormField(
              prefixIcon: Icon(Icons.lock,color: AppColor.kHintColor,),
              hint: 'Enter your Password',
            ),
            20.verticalSpace,
            const Text(
              'Confirm Password',
              style: Styles.textStyle14,
            ),
            10.verticalSpace,
            const CustomTextFormField(
              prefixIcon: Icon(Icons.lock,color: AppColor.kHintColor,),
              hint: 'Confirm Password',
            ),
            40.verticalSpace,
            CustomButton(
              text: 'SIGN UP',
              onTap: () {},
              style: Styles.textStyle20,
            ),
            20.verticalSpace,
            buildLogInText(
              onTap: () {
                GoRouter.of(context).pop();
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
