import 'package:course_app/features/auth/presentation/widgets/forget_pass_view_body.dart';
import 'package:flutter/material.dart';

class ForgetPassView extends StatelessWidget {
  const ForgetPassView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: const ForgetPassViewBody(),
      ),
    );
  }
}
