import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wameed/views/vodafone_cash/view.dart';

import '../../core/design/app_dialog.dart';
import '../../core/design/app_field_button.dart';
import '../../core/design/arrow_back_button.dart';

class PaymentView extends StatefulWidget {
  const PaymentView({super.key});

  @override
  State<PaymentView> createState() => _PaymentState();
}

class _PaymentState extends State<PaymentView> {
  int selectedContainerIndex = 0;

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
                padding: EdgeInsetsDirectional.only(start: 24.w,end: 24.w,bottom: 48.h),
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
                                  radius: 33.w,
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
                                        Text("5.00",style: TextStyle(fontSize: 16.sp,fontFamily: "poppins",fontWeight: FontWeight.w600),),
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
                                        Text("4.6",style: TextStyle(fontSize: 16.sp,fontFamily: "poppins",fontWeight: FontWeight.w600),),
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
                              setState(() {
                                selectedContainerIndex = 0;
                              });
                            },
                            child: Container(
                              height: 60.h,
                              width: 98.w,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: const Color(0xff39A7A7)
                                        .withOpacity(.51)),
                                color: selectedContainerIndex == 0
                                    ? const Color(0xffBFDFDF).withOpacity(.33)
                                    : const Color(0xffF7F7F7).withOpacity(.12),
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
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const VodafoneView()));
                              setState(() {
                                selectedContainerIndex = 1;
                              });
                            },
                            child: Container(
                              height: 60.h,
                              width: 98.w,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color:
                                      const Color(0xff39A7A7).withOpacity(.51),
                                ),
                                color: selectedContainerIndex == 1
                                    ? const Color(0xffBFDFDF).withOpacity(.33)
                                    : const Color(0xffF7F7F7).withOpacity(.12),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                  child: Image.asset(
                                      "assets/images/vodafonecashe.png",
                                      width: 41.w,
                                      height: 41.h)),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 32.h,
                      ),
                      Text(
                        "Name",
                        style: TextStyle(
                            color: const Color(0xff000000).withOpacity(.48),
                            fontFamily: "poppins",
                            fontWeight: FontWeight.w600,
                            fontSize: 16),
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      SizedBox(
                        height: 54.h,
                        child: TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.r),
                              ),
                              prefixIcon: Icon(Icons.person,color: const Color(0xff000000).withOpacity(.36),),
                              fillColor: const Color(0xffF2F2F2),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.r),
                                borderSide: BorderSide(
                                    color: const Color(0xff39A7A7).withOpacity(.41), width: 1.w),
                              ),
                            ),
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontFamily: "poppins",
                              color: const Color(0xff000000)
                                  .withOpacity(.47),
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      SizedBox(
                        height: 32.h,
                      ),
                      Text(
                        "Card number",
                        style: TextStyle(
                            color: const Color(0xff000000).withOpacity(.48),
                            fontFamily: "poppins",
                            fontWeight: FontWeight.w600,
                            fontSize: 16.sp),
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                SizedBox(
                    height: 54.h,
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.r),
                        ),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 14,vertical: 14),
                          child: Image.asset("assets/images/mastercard.png",width: 16.w,height: 16.h,fit: BoxFit.scaleDown),
                        ),
                        fillColor: const Color(0xffF2F2F2),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.r),
                          borderSide: BorderSide(
                              color: const Color(0xff39A7A7).withOpacity(.41), width: 1.w),
                        ),
                      ),
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontFamily: "poppins",
                          color: const Color(0xff000000)
                              .withOpacity(.47),
                          fontWeight: FontWeight.w600),
                    )),
                      SizedBox(
                        height: 32.h,
                      ),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "CVV",
                                style: TextStyle(
                                    color: const Color(0xff000000)
                                        .withOpacity(.48),
                                    fontFamily: "poppins",
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16.sp),
                              ),
                              SizedBox(
                                height: 16.h,
                              ),
                              SizedBox(
                                height: 48.h,
                                width: 78.w,
                                child: TextFormField(
                                  keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10.r),
                                      ),
                                      fillColor: const Color(0xffF2F2F2),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10.r),
                                        borderSide: BorderSide(
                                            color: const Color(0xff39A7A7).withOpacity(.29), width: 1.w),
                                      ),
                                    ),
                                  style: TextStyle(
                                      fontSize: 14.sp,
                                      fontFamily: "poppins",
                                      color: const Color(0xff000000)
                                          .withOpacity(.47),
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 67.h,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "EX",
                                style: TextStyle(
                                    color: const Color(0xff000000)
                                        .withOpacity(.48),
                                    fontFamily: "poppins",
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16),
                              ),
                              SizedBox(
                                height: 16.h,
                              ),
                              SizedBox(
                                height: 48.h,
                                width: 78.w,
                                child: TextFormField(
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.r),
                                    ),
                                    fillColor: const Color(0xffF2F2F2),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.r),
                                      borderSide: BorderSide(
                                          color: const Color(0xff39A7A7).withOpacity(.29), width: 1.w),
                                    ),
                                  ),
                                  style: TextStyle(
                                      fontSize: 14.sp,
                                      fontFamily: "poppins",
                                      color: const Color(0xff000000)
                                          .withOpacity(.47),
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Spacer(),
                      AppFilledButton(
                          height: 54.h,
                          text: "Confirm",
                          fontFamily: "poppins",
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return AppDialog(
                                    buttonText: "Back To set it",
                                    subText: "successfully",
                                    text: "Your Booking",
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                          builder: (context) => const PaymentView()));
                                    },
                                  );
                                });
                          }),
                    ]))));
  }
}
