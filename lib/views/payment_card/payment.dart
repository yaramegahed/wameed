import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/design/arrow_back_button.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const ArrowBackButton(),
          title: const Center(
            child: Text("Payment",
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
                      SizedBox(
                        height: 44.h,
                      ),
                      Container(
                          width: double.infinity,
                          height: 139.h,
                          padding: EdgeInsetsDirectional.only(
                              start: 6.w, end: 16.w, top: 24.h, bottom: 22.h),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.r),
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
                          child: Row(children: [
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
                                    const Row(
                                      children: [
                                        Text("Dr. John Smith",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontFamily: "inter",
                                                fontWeight: FontWeight.w600)),
                                        Spacer(),
                                        Text("5.00")
                                      ],
                                    ),
                                    Text("Psychiatrist",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontFamily: "poppins",
                                            fontSize: 12,
                                            color:
                                                Colors.black.withOpacity(.56))),
                                    SizedBox(
                                      height: 8.h,
                                    ),
                                    Row(
                                      children: [
                                        const Text("4.6"),
                                        SizedBox(
                                          width: 4.w,
                                        ),
                                        const Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                        ),
                                      ],
                                    ),
                                  ]),
                            ),
                          ])),
                      SizedBox(
                        height: 26.h,
                      ),
                      const Text(
                        "Payment Method",
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: "poppins",
                            fontWeight: FontWeight.w600),
                      ),
                      
                    ]))));
  }
}
