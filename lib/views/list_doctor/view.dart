import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/design/arrow_back_button.dart';
import '../../main.dart';

class DoctorView extends StatefulWidget {
  const DoctorView({super.key});

  @override
  State<DoctorView> createState() => _DoctorState();
}

class _DoctorState extends State<DoctorView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const ArrowBackButton(),
        title: const Center(
          child: Text("Doctor",
              style: TextStyle(
                  fontSize: 24,
                  fontFamily: "poppins",
                  fontWeight: FontWeight.w600)),
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 28.h,
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(start: 24.w),
              child:  Text("All Doctors",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontFamily: "inter",
                      fontSize: 20.sp
                  )),
            ),
            Expanded(
              child: ListView.separated(
                physics: const BouncingScrollPhysics(),
                  padding: EdgeInsets.symmetric(horizontal: 24.w,vertical: 24.h),
                  itemBuilder: (context, index) => Container(
                        width: double.infinity,
                        height: 170.h,
                        padding: EdgeInsetsDirectional.only(
                            start: 6.w, end: 16.w, top: 24.h, bottom: 22.h),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.r),
                            color: const Color(0xffF9F9F9),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.25),
                                  blurRadius: 4,
                                  offset: const Offset(2, 2)),
                            ]),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                CircleAvatar(
                                  radius: 36.w,
                                )
                              ],
                            ),
                            SizedBox(
                              width: 8.w,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding:  EdgeInsets.only(top: 8.h),
                                    child: Row(
                                      children: [
                                        Text("Dr. John Smith",
                                            style: TextStyle(
                                                fontSize: 18.sp,
                                                fontFamily: "inter",
                                                fontWeight: FontWeight.w600)),
                                        const Spacer(),
                                        const Text("4.6"),
                                        SizedBox(
                                          width: 4.w,
                                        ),
                                        const Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 4.h,
                                  ),
                                  Text(
                                      "Psychiatrist",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontFamily: "poppins",
                                          fontSize: 12.sp,
                                          color:
                                              Colors.black.withOpacity(.56))),
                                  const Spacer(),
                                  FilledButton(
                                      onPressed: () {},
                                      style: OutlinedButton.styleFrom(
                                        minimumSize: Size(127.w, 38.h),
                                        maximumSize:
                                            Size(double.infinity, 54.h),
                                        backgroundColor: Colors.transparent,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(12.r),
                                            side: BorderSide(
                                                color: Theme.of(context)
                                                    .primaryColor,
                                                style: BorderStyle.solid,
                                                width: 1.w)),
                                      ),
                                      child: Text(
                                        "Book now",
                                        style: TextStyle(
                                            color:Theme.of(context).primaryColor,
                                            fontWeight: FontWeight.w600),
                                      ))
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                  separatorBuilder: (context, index) => SizedBox(
                        height: 24.h,
                      ),
                  itemCount: 5),
            ),
          ],
        ),
      ),
    );
  }
}
