import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wameed/views/payment_card/view.dart';
import 'package:wameed/views/voafone_cash2/view.dart';

import '../../core/design/arrow_back_button.dart';

class VodafoneView extends StatefulWidget {
  const VodafoneView({super.key});

  @override
  State<VodafoneView> createState() => _PaymentState();
}

class _PaymentState extends State<VodafoneView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const ArrowBackButton(),
          title: Text("Payment",
              style: TextStyle(
                  fontSize: 24.sp,
                  fontFamily: "poppins",
                  fontWeight: FontWeight.w600)),
          centerTitle: true,
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
                              color: const Color(0xffF9F9F9),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.25),
                                    blurRadius: 4,
                                    offset: const Offset(2, 2)),
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.25),
                                    blurRadius: 7,
                                    offset: const Offset(-2, -2)),
                              ]),
                          child: Row(children: [
                            Column(
                              children: [
                                CircleAvatar(
                                  radius: 33.r,
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
                                    Row(
                                      children: [
                                        Text("Dr. John Smith",
                                            style: TextStyle(
                                                fontSize: 18.sp,
                                                fontFamily: "inter",
                                                fontWeight: FontWeight.w600)),
                                        const Spacer(),
                                        Text(
                                          "5.00",
                                          style: TextStyle(
                                              fontSize: 16.sp,
                                              fontFamily: "poppins",
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 4.h,
                                    ),
                                    Text("Psychiatrist",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontFamily: "poppins",
                                            fontSize: 12.sp,
                                            color:
                                                Colors.black.withOpacity(.56))),
                                    SizedBox(
                                      height: 8.h,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "4.6",
                                          style: TextStyle(
                                              fontSize: 12.sp,
                                              fontFamily: "poppins",
                                              fontWeight: FontWeight.w600),
                                        ),
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
                      Text(
                        "Payment Method",
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontFamily: "poppins",
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const PaymentView()));
                            },
                            child: Container(
                              height: 60.h,
                              width: 98.w,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: const Color(0xff39A7A7)
                                        .withOpacity(.51)),
                                color: const Color(0xffF7F7F7).withOpacity(.12),
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                              child: Center(
                                  child: Image.asset(
                                      "assets/images/mastercard.png",
                                      width: 49.w,
                                      height: 41.h)),
                            ),
                          ),
                          SizedBox(width: 8.w),
                          Container(
                            height: 60.h,
                            width: 98.w,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color(0xff39A7A7).withOpacity(.51),
                              ),
                              color: const Color(0xffBFDFDF).withOpacity(.33),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                                child: Image.asset(
                                    "assets/images/vodafonecashe.png",
                                    width: 41.w,
                                    height: 41.h)),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 32.h,
                      ),
                      Text(
                        "Payment steps",
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontFamily: "poppins",
                            fontWeight: FontWeight.w600),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.only(top: 16.h, bottom: 16.h),
                        child: Text(
                          "1-Transfer the amount to this number :",
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontFamily: "poppins",
                              fontWeight: FontWeight.w600,
                              color: const Color(0xff000000).withOpacity(.51)),
                        ),
                      ),
                      Container(
                          height: 49.h,
                          width: 204.w,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color:
                                    const Color(0xffD9D9D9).withOpacity(.38)),
                            color: const Color(0xffD9D9D9).withOpacity(.38),
                            borderRadius: BorderRadius.circular(12.r),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.only(
                                start: 17.h, bottom: 14.h, top: 14.h),
                            child: Text(
                              "+543  654  876",
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "poppins",
                                  color:
                                      const Color(0xff000000).withOpacity(.53)),
                            ),
                          )),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.only(top: 32.h, bottom: 16.h),
                        child: Text(
                          "2-Upload the receipt image to confirm\nyour payment :",
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontFamily: "poppins",
                              fontWeight: FontWeight.w600,
                              color: const Color(0xff000000).withOpacity(.51)),
                        ),
                      ),
                      Container(
                        height: 49.h,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color(0xffD9D9D9).withOpacity(.38)),
                          color: const Color(0xffD9D9D9).withOpacity(.48),
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.only(
                                  top: 14.h, bottom: 14.h, start: 17.w),
                              child: Text(
                                "upload the receipt",
                                style: TextStyle(
                                    fontFamily: "poppins",
                                    color: const Color(0xff000000)
                                        .withOpacity(.51),
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            const Spacer(),
                            IconButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const VodafoneView2(),
                                ));
                              },
                              icon: const Icon(Icons.arrow_forward_ios),
                              color: const Color(0xff000000).withOpacity(.60),
                            )
                          ],
                        ),
                      ),
                    ]))));
  }
}
