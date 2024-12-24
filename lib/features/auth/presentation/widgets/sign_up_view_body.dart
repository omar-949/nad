import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/widgets/build_logo_widget.dart';
import 'sign_up_form.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            100.verticalSpace,
            Text("comprehensive system disaster", style: TextStyle(fontSize: 20.sp, color: Colors.black),),
            24.verticalSpace,
            const SignUpForm(),
            40.verticalSpace,
          ],
        ),
      ),
    );
  }
}
