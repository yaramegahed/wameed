import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wameed/core/design/app_field_button.dart';
import 'package:wameed/core/design/arrow_back_button.dart';
import 'package:wameed/views/vodafone_cash3/view.dart';

class VodafoneView2 extends StatelessWidget {
  const VodafoneView2({super.key});

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
        padding: EdgeInsetsDirectional.only(top: 40.h, start: 24.w, end: 24.w,bottom: 114.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const VodafoneView3(),));
              },
              child: Container(
                height: 113.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xff000000)),
                  color: const Color(0xffEAF5F5).withOpacity(.56),
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.symmetric(vertical: 16.h),
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/images/upload.png",
                        height: 30.h,
                        width: 46.w,
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        "Upload the receipt..",
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontFamily: "poppins",
                            color: const Color(0xff000000),
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "be careful it’s clear",
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontFamily: "poppins",
                            color: const Color(0xff000000).withOpacity(.49),
                            fontWeight: FontWeight.w500),
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
            SizedBox(height: 18.h,),
            SizedBox(
              height: 64.h,
              child: TextFormField(
                keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    fillColor: const Color(0xffD9D9D9).withOpacity(.30),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.r),
                      borderSide: BorderSide(
                          color: const Color(0xffD9D9D9).withOpacity(.30), width: 1.w),
                    ),
                  )),
            ),
            // Container(
            //     height: 64.h,
            //     width: double.infinity,
            //     decoration: BoxDecoration(
            //       border: Border.all(
            //           color:
            //           const Color(0xffD9D9D9).withOpacity(.38)),
            //       color: const Color(0xffD9D9D9).withOpacity(.38),
            //       borderRadius: BorderRadius.circular(12.r),
            //     ),
            //     child: Padding(
            //       padding: EdgeInsetsDirectional.only(
            //           start: 17.h, bottom: 23.h, top: 23.h),
            //       child: Text(
            //         "+543  654  876",
            //         style: TextStyle(
            //             fontSize: 12.sp,
            //             fontWeight: FontWeight.w500,
            //             fontFamily: "poppins",
            //             color:
            //             const Color(0xff000000).withOpacity(.38)),
            //       ),
            //     )),
            const Spacer(),
            AppFilledButton(text: "Send Receipt", onPressed: (){},height: 64.h),
          ],
        ),
      ),
    );
  }
}
