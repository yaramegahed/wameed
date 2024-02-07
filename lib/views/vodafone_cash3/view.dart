import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wameed/core/design/app_field_button.dart';
import 'package:wameed/core/design/arrow_back_button.dart';

import '../../core/design/app_dialog.dart';

class VodafoneView3 extends StatelessWidget {
  const VodafoneView3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const ArrowBackButton(),
        centerTitle: true,
        title: Text("Upload image",
            style: TextStyle(
                fontSize: 24.sp,
                fontFamily: "poppins",
                fontWeight: FontWeight.w600)),
      ),
      body: Padding(
        padding: EdgeInsetsDirectional.only(top: 40.h, start: 24.w, end: 24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {},
              child: Container(
                height: 113.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xff000000)),
                  color: const Color(0xffEAF5F5).withOpacity(.56),
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.only(
                      start: 16.h, top: 30.h, bottom: 31.h),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/image.png",
                        height: 52.h,
                        width: 52.w,
                      ),
                      SizedBox(
                        width: 12.w,
                      ),
                      Column(
                        children: [
                          Text(
                            "",
                            style: TextStyle(
                                fontSize: 16.sp,
                                fontFamily: "poppins",
                                color: const Color(0xff000000),
                                fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            height: 6.h,
                          ),
                          Text(
                            "Upload successfully",
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontFamily: "poppins",
                                color: const Color(0xff000000).withOpacity(.37),
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 78.h,
            ),
            Text(
              "Phone number",
              style: TextStyle(
                  fontSize: 14.sp,
                  fontFamily: "poppins",
                  fontWeight: FontWeight.w600,
                  color: const Color(0xff000000).withOpacity(.73)),
            ),
            SizedBox(
              height: 18.h,
            ),
            Container(
                height: 64.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: const Color(0xffD9D9D9).withOpacity(.38)),
                  color: const Color(0xffD9D9D9).withOpacity(.38),
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.only(
                      start: 17.h, bottom: 23.h, top: 23.h),
                  child: Text(
                    "+543  654  876",
                    style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                        fontFamily: "poppins",
                        color: const Color(0xff000000).withOpacity(.38)),
                  ),
                )),
            const Spacer(),
            AppFilledButton(
                text: "Send Receipt",
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AppDialog(
                            buttonText: "Back to confirm",
                            text: "Your receipt send",
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const VodafoneView3()));
                            });
                      });
                },
                height: 64.h),
            SizedBox(
              height: 114.h,
            )
          ],
        ),
      ),
    );
  }
}
