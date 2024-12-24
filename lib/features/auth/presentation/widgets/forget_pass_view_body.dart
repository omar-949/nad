import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/utils/app_color.dart';
import '../../../../core/utils/app_router.dart';
import '../../../../core/utils/styles.dart';
import '../../../../core/widgets/build_logo_widget.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../../../core/widgets/custom_text_form_field.dart';

class ForgetPassViewBody extends StatelessWidget {
  const ForgetPassViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            40.verticalSpace,
            Text("comprehensive system disaster", style: TextStyle(fontSize: 20.sp, color: Colors.black),),
            24.verticalSpace,
            Container(
              width: double.infinity,
              decoration: buildBoxDecoration(),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Forgot Your Password?',
                      style: Styles.textStyle20,
                    ),
                    10.verticalSpace,
                    Text(
                      'Enter your phone number, we will send you confirmation code',
                      style: Styles.textStyle12.copyWith(
                        fontWeight: FontWeight.w400,
                        color: AppColor.kGrayColor,
                      ),
                    ),
                    50.verticalSpace,
                    const Text(
                      'Phone Number',
                      style: Styles.textStyle14,
                    ),
                    10.verticalSpace,
                    const CustomTextFormField(
                      prefixIcon: Icon(Icons.phone,color: AppColor.kHintColor,),
                      hint: 'Enter your phone number',
                    ),
                    50.verticalSpace,
                    CustomButton(
                      text: 'Reset Password',
                      onTap: () {

                      },
                      style: Styles.textStyle20,
                    ),
                    20.verticalSpace,
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  BoxDecoration buildBoxDecoration() {
    return BoxDecoration(
      color: AppColor.kLoginConColor,
      borderRadius: BorderRadius.circular(16.r),
    );
  }
}
