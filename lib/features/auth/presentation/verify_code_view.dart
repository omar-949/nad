import 'package:course_app/features/auth/presentation/widgets/verify_code_view_body.dart';
import 'package:flutter/material.dart';

class VerifyCodeView extends StatelessWidget {
  const VerifyCodeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: const VerifyCodeViewBody(),
      ),
    );
  }
}
