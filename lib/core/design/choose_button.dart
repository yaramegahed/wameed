import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChooseButton extends StatelessWidget {
  const ChooseButton ({super.key, required this.text, this.fontFamily="inter", this.radius=10, this.height=54});

  final String text,fontFamily;
  final double radius,height;
  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        minimumSize:
        Size(380.w, 48.h),
        maximumSize:
        Size(double.infinity, 54.h),
        backgroundColor: Colors.grey.shade100,
        shape: RoundedRectangleBorder(
            borderRadius:
            BorderRadius.circular(8.r),
            side: BorderSide(
                color: Theme.of(context).primaryColor.withOpacity(.29),
                style: BorderStyle.solid,
                width: 1.5.w)),
      ),
      child: Text(
        text,
        style: TextStyle(
            fontSize: 20.sp,
            fontWeight: FontWeight.bold,
            fontFamily: fontFamily
        ),
      ),
    );
  }
}