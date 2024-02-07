import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wameed/core/design/app_field_button.dart';

import '../../core/design/colors.dart';
import '../payment_card/view.dart';

class ScanView extends StatefulWidget {
  const ScanView({super.key});

  @override
  State<ScanView> createState() => _ScanViewState();
}

class _ScanViewState extends State<ScanView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
                padding: EdgeInsetsDirectional.symmetric(horizontal: 34.w),
                child: Column(children: [
                  SizedBox(
                    height: 190.h,
                  ),
                  Image.asset(
                    "assets/images/faceid.png",
                    height: 235,
                    width: 161,
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  const Text.rich(
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          fontFamily: "poppins"),
                      TextSpan(
                        text: "Face",
                        style: TextStyle(
                            fontFamily: "poppins",
                            fontWeight: FontWeight.w700,
                            fontSize: 24),
                        children: [
                          TextSpan(
                            text: " ID",
                            style: TextStyle(
                                color: Color(0xff39A7A7),
                                fontFamily: "poppins",
                                fontWeight: FontWeight.w700,
                                fontSize: 24),
                          ),
                        ],
                      )),
                  SizedBox(
                    height: 24.h,
                  ),
                  Text(
                    "Face ID is a facial Recognition feature which\ndetects person from his face expressions to\nknow if he has depression or not.",
                    style: TextStyle(fontWeight: FontWeight.w500,
                        fontSize: 16,
                        fontFamily: "poppins",
                        color: const Color(0xff39A7A7).withOpacity(.76)),
                  ),
                  const Spacer(),
                  FilledButton(
                    onPressed: () {},
                    style: FilledButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.r)),
                      minimumSize: Size(338.w, 70.h),
                      maximumSize: Size(338.w, 70.h),
                      backgroundColor: Theme.of(context).primaryColor,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Get Started",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.sp,
                              fontWeight: FontWeight.bold,
                              fontFamily: "inter"),
                        ),
                        SizedBox(
                          width: 17.w,
                        ),
                        const Icon(
                          Icons.arrow_right_alt,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 94.h,
                  )
                ]))));
  }
}
