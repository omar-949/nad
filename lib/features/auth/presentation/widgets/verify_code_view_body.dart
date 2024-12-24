import 'package:course_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/widgets/build_logo_widget.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../core/utils/app_color.dart';
import '../../../../core/utils/app_router.dart';
import '../../../../core/utils/styles.dart';
import 'verify_code_field.dart';

class VerifyCodeViewBody extends StatelessWidget {
  const VerifyCodeViewBody({super.key});

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
                      'Enter Verification Code',
                      style: Styles.textStyle20,
                    ),
                    10.verticalSpace,
                    Text(
                      'Enter code that we have sent to your number 012345678*** ',
                      style: Styles.textStyle12.copyWith(
                        fontWeight: FontWeight.w400,
                        color: AppColor.kGrayColor,
                      ),
                    ),
                    50.verticalSpace,
                    const VerifyCodeField(),
                    50.verticalSpace,
                    CustomButton(
                      text: 'Verify',
                      onTap: () {
                        showAlertDialog(context);
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

void showAlertDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        // title: Text('Alert Dialog Title'),
        content: Padding(
          padding: const EdgeInsets.only(top: 25),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              AspectRatio(
                aspectRatio: 2.5 / 1.5,
                child: Image.asset(AssetsData.alertDialogImg),
              ),
              const SizedBox(height: 15),
              const Text(
                'Success',
                style: Styles.textStyle20,
              ),
              const SizedBox(height: 5),
              const Text(
                'You have successfully reset your password.',
                style: Styles.textStyle16,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: CustomButton(
              onTap: () {
                GoRouter.of(context).push(AppRouter.kMyHomeView);
              },
              text: "Done",
              style: Styles.textStyle20,
            ),
          ),
        ],
      );
    },
  );
}
