import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wameed/views/help_patient/view.dart';
import 'package:wameed/views/language_setting/view.dart';

import '../../core/design/arrow_back_button.dart';
import '../../core/theming/styles.dart';

class SettingPatientView extends StatelessWidget {
  const SettingPatientView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const ArrowBackButton(),
        title: Text(
          "Setting",
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
        padding: EdgeInsetsDirectional.only(top: 31.h,start: 24.w,end: 24.w),
        child: Column(
          children: [
            _Item(title: "Personal information", onPressed: () {}),
            SizedBox(
              height: 28.h,
            ),
            const _EditFiled(
              mainText: "Name",
              valueText: "Ahmed Mohamed",
            ),
            SizedBox(
              height: 22.h,
            ),
            _Item(title: "Email", onPressed: () {}),
            SizedBox(
              height: 18.h,
            ),
            const _EditFiled(
              mainText: "Email",
              valueText: "ahmed_23@gmail.com",
            ),
            SizedBox(
              height: 38.h,
            ),
            _Item(title: "Password", onPressed: () {}),
            SizedBox(
              height: 18.h,
            ),
            const _EditFiled(
              mainText: "Password",
              valueText: "**********",
            ),
            SizedBox(
              height: 40.h,
            ),
            Row(
              children: [
                Text("Help Center",
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        fontFamily: "poppins")),
              ],
            ),
            SizedBox(
              height: 24.h,
            ),
            Container(
              width: double.infinity,
              height: 53.h,
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              decoration: BoxDecoration(
                  color: const Color(0xffF2F2F2).withOpacity(.63),
                  borderRadius: BorderRadius.circular(15.r),
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(0, 0),
                        blurRadius: 4,
                        blurStyle: BlurStyle.outer,
                        color: Colors.black.withOpacity(.25)),
                  ]),
              child: Row(
                children: [
                  Text("FAQ",
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        fontFamily: "poppins",
                        color: Colors.black.withOpacity(.55),
                      )),
                  const Spacer(),
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const HelpAndSupportView(),));
                    },
                    icon: const Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 22,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            Row(
              children: [
                Text("Language",
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                        fontFamily: "poppins")),
              ],
            ),
            SizedBox(
              height: 24.h,
            ),
            Container(
              width: double.infinity,
              height: 53.h,
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              decoration: BoxDecoration(
                  color: const Color(0xffF2F2F2).withOpacity(.63),
                  borderRadius: BorderRadius.circular(15.r),
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(0, 0),
                        blurRadius: 4,
                        blurStyle: BlurStyle.outer,
                        color: Colors.black.withOpacity(.25)),
                  ]),
              child: Row(
                children: [
                  Text("English", style: TextStyles.poppins14Black55Medium),
                  const Spacer(),
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const LanguageSettingView(),));
                    },
                    icon: const Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 22,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Item extends StatelessWidget {
  const _Item({
    super.key,
    required this.title,
    this.onPressed,
  });

  final String title;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyles.poppins16BlackSemiBold,
        ),
        const Spacer(),
        IconButton(
            onPressed: onPressed,
            icon: Icon(
              Icons.edit,
              color: Colors.black.withOpacity(.42),
              size: 26.sp,
            ))
      ],
    );
  }
}

class _EditFiled extends StatelessWidget {
  const _EditFiled(
      {super.key, required this.valueText, required this.mainText});

  final String valueText, mainText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.only(start: 18.w),
      width: double.infinity,
      height: 76.h,
      decoration: BoxDecoration(
          color: const Color(0xffF2F2F2).withOpacity(.63),
          borderRadius: BorderRadius.circular(15.r),
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, 0),
                blurRadius: 4,
                blurStyle: BlurStyle.outer,
                color: Colors.black.withOpacity(.25)),
            BoxShadow(
                offset: const Offset(0, 0),
                blurRadius: 2,
                blurStyle: BlurStyle.outer,
                color: Colors.black.withOpacity(.20)),
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            mainText,
            style:
            TextStyles.poppins14Black55Medium.copyWith(color: Colors.black),
          ),
          Text(
            valueText,
            style: TextStyles.poppins14Black55Medium.copyWith(
              color: Colors.black.withOpacity(.44),
            ),
          ),
        ],
      ),
    );
  }
}
