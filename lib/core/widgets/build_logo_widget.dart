


import 'package:flutter/material.dart';

class BuildLogoWidget extends StatelessWidget {
  const BuildLogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.5 / 1.5,
      child: Image.asset('assets/images/logo.png'),
    );
  }
}
