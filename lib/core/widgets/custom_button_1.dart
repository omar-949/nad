import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton1 extends StatelessWidget {
  const CustomButton1({
    super.key,
    required this.text,
    required this.style,
    required this.onTap,
    required this.color,
    required this.width,
    required this.height,
  });

  final String text;
  final TextStyle style;
  final VoidCallback onTap;
  final Color color;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        color: color,
      ),
      child: Text(
        text,
        style: style,
      ),
    );
  }
}
