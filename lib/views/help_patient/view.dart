import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wameed/core/theming/styles.dart';

import '../../core/design/app_field_button.dart';
import '../../core/design/arrow_back_button.dart';

class HelpAndSupportView extends StatelessWidget {
  const HelpAndSupportView({super.key});

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
        padding: EdgeInsetsDirectional.only(top: 36.w, start: 24.w, end: 24.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "Objective",
                    style: TextStyles.poppins16BlackSemiBold,
                  ),
                ],
              ),
              SizedBox(
                height: 16.h,
              ),
              const _Item(hintText: "the title"),
              SizedBox(
                height: 32.h,
              ),
              Row(
                children: [
                  Text(
                    "Email",
                    style: TextStyles.poppins16BlackSemiBold,
                  ),
                ],
              ),
              SizedBox(height: 16.h,),
              const _Item(hintText: ""),
              SizedBox(
                height: 32.h,
              ),
              Row(
                children: [
                  Text(
                    "Problem",
                    style: TextStyles.poppins16BlackSemiBold,
                  ),
                ],
              ),
              SizedBox(height: 16.h,),
              const _Item(hintText: "",maxLines: 5,),
              SizedBox(height: MediaQuery.of(context).size.height/8,),
              AppFilledButton(text: "Submit",onPressed: (){}),
            ],
          ),
        ),
      ),
    );
  }
}

class _Item extends StatelessWidget {
  const _Item({super.key, required this.hintText, this.maxLines=1});

  final String hintText;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.r),
          boxShadow: [
            BoxShadow(
                offset: const Offset(2, 2),
                color: Colors.black.withOpacity(.25),
                blurRadius: 2),
          ]),
      child: TextFormField(
        onTapOutside: (event) {
          FocusManager.instance.primaryFocus!.unfocus();
        },
        maxLines: maxLines,
        decoration: InputDecoration(
          filled: true,
          hintText: hintText,
          hintStyle: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 14.sp,
              fontFamily: "poppins",
              color: Colors.black),
          fillColor: const Color(0xffF2F2F2).withOpacity(.63),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(15.r),
          ),
        ),
      ),
    );
  }
}