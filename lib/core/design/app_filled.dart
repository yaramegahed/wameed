import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppFilled extends StatelessWidget {
  const AppFilled(
      {super.key,
      required this.text,
      this.fontFamily = "inter",
      this.radius = 10,
      this.height = 54});

  final String text, fontFamily;
  final double radius, height;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        decoration: InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.r),
      ),
      fillColor: const Color(0xffACACAC).withOpacity(.10),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.r),
        borderSide: BorderSide(
            color: const Color(0xff39A7A7).withOpacity(.29), width: 1.5.w),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
            color: Theme.of(context).primaryColor.withOpacity(.29),
            width: 1.5.w),
      ),

      // style: OutlinedButton.styleFrom(
      //   minimumSize:
      //   Size(380.w, 48.h),
      //   maximumSize:
      //   Size(double.infinity, 54.h),
      //   backgroundColor: Colors.grey.shade100,
      //   shape: RoundedRectangleBorder(
      //       borderRadius:
      //       BorderRadius.circular(8.r),
      //       side: BorderSide(
      //           color: Theme.of(context).primaryColor.withOpacity(.29),
      //           style: BorderStyle.solid,
      //           width: 1.5.w)),
      // ),
    ));
  }
}
