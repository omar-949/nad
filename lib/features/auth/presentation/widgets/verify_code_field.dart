import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

import '../../../../../core/utils/app_color.dart';

class VerifyCodeField extends StatelessWidget {
  const VerifyCodeField({super.key});

  @override
  Widget build(BuildContext context) {
    const defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: TextStyle(fontSize: 22, color: AppColor.kRateContainerColor),
      decoration: BoxDecoration(
        color: AppColor.kWhiteColor,
      ),
    );

    return Align(
      alignment: Alignment.center,
      child: Pinput(
        closeKeyboardWhenCompleted: true,
        length: 6,
        keyboardType: TextInputType.number,
        separatorBuilder: (index) => const SizedBox(width: 8),
        hapticFeedbackType: HapticFeedbackType.lightImpact,
        onCompleted: (pin) {
          debugPrint('onCompleted: $pin');
        },
        onChanged: (value) {
          debugPrint('onChanged: $value');
        },
        cursor: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 9),
              width: 22,
              height: 1,
              color: AppColor.kRateContainerColor,
            ),
          ],
        ),
        defaultPinTheme: defaultPinTheme.copyWith(
          decoration: const BoxDecoration(
            // borderRadius: BorderRadius.circular(8),
            border: Border(
              bottom: BorderSide(color: AppColor.kRateContainerColor),
            ),
          ),
        ),
        focusedPinTheme: defaultPinTheme.copyWith(
          decoration: defaultPinTheme.decoration!.copyWith(
            // borderRadius: BorderRadius.circular(8),
            border: Border.all(color: AppColor.kRateContainerColor),
          ),
        ),
      ),
    );
  }
}

class CustomRoundedBorderPainter extends CustomPainter {
  final Color borderColor;

  CustomRoundedBorderPainter(this.borderColor);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = borderColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;

    final rect = RRect.fromRectAndRadius(
      Rect.fromLTWH(0, 0, size.width, size.height),
      const Radius.circular(8),
    );

    final path = Path()
      ..addRRect(rect)
      ..addRect(Rect.fromLTWH(0, size.height - 2, size.width, 2));

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
