// import 'package:flutter/material.dart';
//
// import '../utils/styles.dart';
//
// class CustomButton extends StatelessWidget {
//   const CustomButton(
//       {super.key,
//       this.onTap,
//       required this.text,
//       this.color,
//       required this.style});
//
//   final void Function()? onTap;
//   final String text;
//   final Color? color;
//   final TextStyle style;
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: double.infinity,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(33),
//       ),
//       child: ElevatedButton(
//           style: ElevatedButton.styleFrom(
//             backgroundColor: Colors.transparent,
//             shadowColor: Colors.transparent,
//           ),
//           onPressed: onTap,
//           child: Text(
//             text,
//             style: Styles.textStyle18,
//           )),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/app_color.dart';
import '../utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onTap,
    required this.text,
    required TextStyle style,
  });

  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Center(
        child: Container(
          alignment: Alignment.center,
          width: double.infinity,
          height: 55.h,
          decoration: BoxDecoration(
            color: AppColor.kButtonColor,
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Text(
            text,
            style: Styles.textStyle14.copyWith(
              fontWeight: FontWeight.w500,
              color: AppColor.kWhiteColor,
            ),
          ),
        ),
      ),
    );
  }
}
