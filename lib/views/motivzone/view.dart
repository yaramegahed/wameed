import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/design/arrow_back_button.dart';
import '../../core/design/colors.dart';

class ZoneView extends StatelessWidget {
  const ZoneView({super.key});

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
                          borderRadius: BorderRadius.circular(15.r),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: const Color(0xff000000),
                                blurRadius: 11.r,
                                offset: const Offset(3, 4)),
                            BoxShadow(
                                color: const Color(0xff39A7A7).withOpacity(.60),
                                blurRadius: 8,
                                offset: const Offset(-2, -2)),
                            BoxShadow(
                                color: const Color(0xff39A7A7).withOpacity(.60),
                                blurRadius: 8,
                                offset: const Offset(2, 2)),
                          ]),
                      child: Column(children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              width: 106.w,
                              height: 26.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.r),
                                color: Theme.of(context)
                                    .primaryColor
                                    .withOpacity(.29),
                              ),
                              child: Center(
                                child: Text("Motivation",
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: "poppins",
                                    )),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 56.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 38.w,
                            ),
                            Text(
                                "When your healthy\nself is strong enough\nto deal with all that\ncomes your way in life,\nyour eating disorder self will no longer\nbe useful or necessary.\n"
                                "- Carolyn Costin",
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "poppins",
                                    color: Theme.of(context).primaryColor)),
                            const Spacer(),
                            Icon(Icons.arrow_forward_ios,
                                color: Colors.black.withOpacity(.19)),
                            SizedBox(
                              width: 16.w,
                            )
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
                        Image.asset("assets/images/left-arrow 2.png",
                            height: 22.h, width: 22.w),
                        Padding(
                          padding:
                              EdgeInsetsDirectional.symmetric(horizontal: 8.h),
                          child: Text(
                            "Swipe Left & right For next",
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontFamily: "poppins",
                              fontWeight: FontWeight.w600,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                        ),
                        Image.asset(
                          "assets/images/right-arrow 1.png",
                          height: 22.h,
                          width: 22.w,
                        )
                      ],
                    )
                  ],
                ))));
  }
}
