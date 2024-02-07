import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/design/arrow_back_button.dart';
import '../../core/theming/styles.dart';

class CallView extends StatefulWidget {
  const CallView({super.key});

  @override
  State<CallView> createState() => _CallState();
}

class _CallState extends State<CallView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const ArrowBackButton(),
        title: Text(
          "Profile",
          style: TextStyle(fontSize: 24.sp,fontWeight: FontWeight.w600,fontFamily: "poppins"),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsetsDirectional.only(end: 24.w),
            child: Image.asset(
              "assets/images/mini_logo.png",
              width: 24.w,
              height: 28.h,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsetsDirectional.only(start: 24.w,end: 24.w,top: 29.h),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 147.h,
              padding: EdgeInsetsDirectional.only(start: 24.w),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor.withOpacity(.29),
                borderRadius: BorderRadius.circular(15.r),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xff39A7A7).withOpacity(.29),
                  ),
                  const BoxShadow(
                    color: Colors.white70,
                    offset: Offset(-2, -2),
                    spreadRadius: -5,
                    blurRadius: 8.0,
                  ),
                  BoxShadow(
                    color: Color(0xff39A7A7).withOpacity(.29),
                  ),
                  const BoxShadow(
                    color: Colors.white70,
                    spreadRadius: -1,
                    blurRadius: 8.0,
                    offset: Offset(2, 2),
                  ),
                  BoxShadow(
                      blurRadius: 11,
                      color: Colors.black.withOpacity(.42),
                      blurStyle: BlurStyle.outer)
                ],
              ),
              child: Row(
                children: [
                  Container(
                    width: 84.w,
                    height: 84.w,
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: Icon(Icons.person,size: 35.w,color: const Color(0xff39A7A7),)
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.only(start: 18.w, top: 34.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Ahmed Mohamed",
                          style: TextStyles.inter16Medium
                              .copyWith(fontSize: 14.sp),
                        ),
                        SizedBox(
                          height: 12.h,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.email_outlined,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 8.w,
                            ),
                            Text(
                              "ahmed_23@gmail.com",
                              style: TextStyles.inter16Medium.copyWith(
                                  color: Colors.black.withOpacity(.56),
                                  fontSize: 14.sp),
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 29.h,),
            _Item(
              imgPath: "assets/images/payment.png",
              title: "Payment",
              onPressed: () {},
            ),
            _Item(
              imgPath: "assets/images/report.png",
              title: "Report",
              onPressed: () {},
            ),
            _Item(
              imgPath: "assets/images/setting.png",
              title: "Setting",
              onPressed: () {},
            ),
            _Item(
              imgPath: "assets/images/logout.png",
              title: "Log out",
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class _Item extends StatelessWidget {
  const _Item(
      {super.key, required this.imgPath, required this.title, this.onPressed});

  final String imgPath, title;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 54.h,
      padding: EdgeInsetsDirectional.only(start: 16.w),
      margin: EdgeInsetsDirectional.only(bottom: 24.w),
      decoration: BoxDecoration(
        color: const Color(0xffF2F2F2).withOpacity(.63),
        borderRadius: BorderRadius.circular(15.r),
        border: Border.all(color: const Color(0xffBFDFDF), width: 1.w),
      ),
      child: Row(
        children: [
          Image.asset(
            imgPath,
            width: 22.w,
            height: 22.w,
          ),
          SizedBox(
            width: 8.w,
          ),
          Text(
            title,
            style: TextStyles.poppins14Black55Medium
                .copyWith(color: Colors.black.withOpacity(.40)),
          ),
          const Spacer(),
          IconButton(
              onPressed: onPressed,
              icon: Icon(
                Icons.arrow_forward_ios_outlined,
                color: Colors.black.withOpacity(.50),
                size: 22.sp,
              ))
          ],
        ),
      );
  }
}
