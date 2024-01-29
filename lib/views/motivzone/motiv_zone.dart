import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/design/arrow_back_button.dart';
import '../../core/design/colors.dart';

class Zone extends StatelessWidget {
  const Zone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const ArrowBackButton(),
          title: const Text.rich(
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                fontFamily: "poppins"),
            TextSpan(
              text: "Mo",
              style: TextStyle(
                  fontFamily: "poppins",
                  fontWeight: FontWeight.w600,
                  fontSize: 24),
              children: [
                TextSpan(
                  text: "T",
                  style: TextStyle(
                      fontFamily: "courgette",
                      color: AppColors.mainColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 24),
                ),
                TextSpan(
                  text: "ivZone",
                  style: TextStyle(
                    fontFamily: "poppins",
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                  ),
                ),
              ],
            ),
          ),
        ),
        body: SafeArea(
            child: Padding(
                padding: EdgeInsetsDirectional.symmetric(horizontal: 24.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 148.h,
                    ),
                    Container(
                      width: double.infinity,
                      height: 335.h,
                      padding: EdgeInsetsDirectional.only(
                          start: 6.w, end: 16.w, top: 24.h, bottom: 22.h),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.r),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Theme.of(context)
                                    .primaryColor
                                    .withOpacity(.29),
                                blurRadius: 8,
                                spreadRadius: 2,
                                offset: const Offset(4, 4)),
                            BoxShadow(
                                color: Theme.of(context)
                                    .primaryColor
                                    .withOpacity(.29),
                                blurRadius: 8,
                                spreadRadius: 2,
                                offset: const Offset(4, 4)),
                          ]),
                      child: Column(children: [
                        Row(
                          children: [
                            const Spacer(),
                            Container(
                              width: 106.w,
                              height: 26.h,
                              padding: EdgeInsetsDirectional.only(
                                  start: 250.w,
                                  end: 24.w,
                                  top: 24.h,
                                  bottom: 56.h),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.r),
                                color: Theme.of(context)
                                    .primaryColor
                                    .withOpacity(.29),
                              ),
                              child: const Text("Motivation",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: "poppins")),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 56.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(width: 38.w,),
                            Text(
                                "When your healthy self is strong enough\n"
                                "to deal with all that comes your way in life,\n"
                                "your eating disorder self will no longer\n"
                                "be useful or necessary.\n"
                                "- Carolyn Costin",
                                style: TextStyle(
                                    color: Theme.of(context).primaryColor)),
                            const Spacer(),
                            Icon(Icons.arrow_forward_ios,color: Colors.black.withOpacity(.19)),
                          ],
                        ),
                      ]),
                    ),
                    SizedBox(
                      height: 104.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.keyboard_double_arrow_left_rounded,
                          size: 32.w,
                        ),
                        Text(
                          "Swipe Left & right For next",
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: "poppins",
                            fontWeight: FontWeight.w600,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                        Icon(
                          Icons.keyboard_double_arrow_right_rounded,
                          size: 32.w,
                        ),
                      ],
                    )
                  ],
                ))));
  }
}
