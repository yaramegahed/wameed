import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wameed/core/design/app_field_button.dart';

class ReceiptView extends StatelessWidget {
  const ReceiptView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "The Receipt",
          style: TextStyle(
            fontSize: 24.sp,
            fontFamily: "poppins",
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsetsDirectional.only(
            start: 24.w, end: 24.w, top: 100.h, bottom: 160.h),
        child: Column(
          children: [
            Container(
              height: 406.h,
              width: 380.w,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage("assets/images/receipt.png"),
              )),
              child: Padding(
                padding: EdgeInsetsDirectional.only(
                    top: 40.h, start: 24.w, end: 24.w, bottom: 32.h),
                child: Column(
                  children: [
                    Text(
                      "RECEIPT",
                      style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 30.sp,
                          color: const Color(0xff58595B)),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.only(
                          start: 24.w, end: 24.w, top: 35.h, bottom: 9.h),
                      child: Row(
                        children: [
                          Text(
                            "Date:",
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                                fontFamily: "poppins"),
                          ),
                          const Spacer(),
                          Text(
                            "2-9-2023",
                            style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w600,
                                fontFamily: "poppins"),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.only(
                          start: 24.w, end: 24.w, bottom: 9.h),
                      child: Row(
                        children: [
                          Text(
                            "appointment:",
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                                fontFamily: "poppins"),
                          ),
                          const Spacer(),
                          Text(
                            "2:30pm",
                            style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w600,
                                fontFamily: "poppins"),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.only(
                          start: 24.w, end: 24.w, bottom: 9.h),
                      child: Row(
                        children: [
                          Text(
                            "transferred to:",
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                                fontFamily: "poppins"),
                          ),
                          const Spacer(),
                          Text(
                            "",
                            style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w600,
                                fontFamily: "poppins"),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.only(
                          start: 24.w, end: 24.w, bottom: 9.h),
                      child: Row(
                        children: [
                          Text(
                            "transferred to:",
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                                fontFamily: "poppins"),
                          ),
                          const Spacer(),
                          Text(
                            "",
                            style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w600,
                                fontFamily: "poppins"),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.only(
                          start: 24.w, end: 24.w, bottom: 9.h),
                      child: Row(
                        children: [
                          Text(
                            "transferred to:",
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                                fontFamily: "poppins"),
                          ),
                          const Spacer(),
                          Text(
                            "",
                            style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w600,
                                fontFamily: "poppins"),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    Text("Thank You !",
                        style: TextStyle(
                          fontSize: 18.sp,
                            fontFamily: "poppins",
                            fontWeight: FontWeight.w800,
                            color: const Color(0xff58595B))),
                  ],
                ),
              ),
            ),
            const Spacer(),
            AppFilledButton(text: "Ok", onPressed: () {}, height: 64.h),
          ],
        ),
      ),
    );
  }
}
