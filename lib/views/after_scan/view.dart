import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wameed/core/design/app_field_button.dart';

class AfterScanView extends StatelessWidget {
  const AfterScanView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
                padding: EdgeInsetsDirectional.symmetric(horizontal: 24.w),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 158.h,
                      ),
                      Image.asset(
                        "assets/images/Group.png",
                        width: 134,
                        height: 134,
                      ),
                      SizedBox(
                        height: 24.h,
                      ),
                      const Text(
                        "your Scanning",
                        style: TextStyle(
                            fontFamily: "inter",
                            fontWeight: FontWeight.w600,
                            fontSize: 14),
                      ),
                      const Text(
                        "Successfully !",
                        style: TextStyle(
                            color: Color(0Xff39A7A7),
                            fontFamily: "inter",
                            fontWeight: FontWeight.w600,
                            fontSize: 18),
                      ),
                      SizedBox(
                        height: 48.h,
                      ),
                      const Text(
                        "This person has depression.",
                        style: TextStyle(
                            fontFamily: "inter",
                            fontWeight: FontWeight.w600,
                            fontSize: 16),
                      ),
                      SizedBox(height: 32.h,),
                const Text(
                    "",
                    style: TextStyle(
                      color: Color(0xff9E9E9E),
                        fontFamily: "inter",
                        fontWeight: FontWeight.w600,
                        fontSize: 12),
                ),
                      const Spacer(),
                      AppFilledButton(height: 54,
                          text: "Submit", onPressed: (){}),
                      SizedBox(height: 64.h,)
                    ]))));
  }
}
