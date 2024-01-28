import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/design/arrow_back_button.dart';
import '../../main.dart';

class Doctor extends StatefulWidget {
  const Doctor({super.key});

  @override
  State<Doctor> createState() => _DoctorState();
}

class _DoctorState extends State<Doctor> {
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
        child: Padding(
            padding: EdgeInsetsDirectional.symmetric(horizontal: 24.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 28.h,),
                const Text("All Doctors",style: TextStyle(fontWeight: FontWeight.w600,fontFamily: "inter",fontSize: 20)),
                SizedBox(height: 24.h,),
                Expanded(
                    child: ListView.separated(
                        itemBuilder: (context, index) => Container(
                              width: double.infinity,
                              height: 170.h,
                              padding: EdgeInsetsDirectional.only(
                                  start: 6.w,
                                  end: 16.w,
                                  top: 24.h,
                                  bottom: 22.h),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black.withOpacity(0.1),
                                        blurRadius: 8,
                                        spreadRadius: 2,
                                        offset: const Offset(4, 4)),
                                    BoxShadow(
                                        color: Colors.black.withOpacity(0.1),
                                        blurRadius: 8,
                                        spreadRadius: 2,
                                        offset: const Offset(4, 4)),
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            const Text("Dr. John Smith",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontFamily: "inter",
                                                    fontWeight:
                                                        FontWeight.w600)),
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
                                        Text("Psychiatrist",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontFamily: "poppins",
                                                fontSize: 12,
                                                color: Colors.black
                                                    .withOpacity(.56))),
                                        const Spacer(),
                                        FilledButton(
                                            onPressed: () {},
                                            style: OutlinedButton.styleFrom(
                                              minimumSize: Size(127.w, 38.h),
                                              maximumSize:
                                                  Size(double.infinity, 54.h),
                                              backgroundColor:
                                                  Colors.transparent,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.r),
                                                  side: BorderSide(
                                                      color: Theme.of(context)
                                                          .primaryColor,
                                                      style: BorderStyle.solid,
                                                      width: 1.w)),
                                            ),
                                            child: Text(
                                              "Book now",
                                              style: TextStyle(
                                                  color: getMyMaterialColor(),
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
                        itemCount: 5)),
              ],
            )),
      ),
    );
  }
}
