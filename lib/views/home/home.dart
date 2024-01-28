import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wameed/main.dart';
import '../../core/design/arrow_back_button.dart';
import '../../core/design/colors.dart';
import '../../core/design/text.logo.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const ArrowBackButton(),
        title: const TextLogo(),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsDirectional.symmetric(horizontal: 24.w),
          child: Column(
            children: [
              const Row(
                children: [
                  SizedBox(
                    height: 32,
                  ),
                  Text(
                    "All services",
                    style: TextStyle(
                        fontFamily: "inters",
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              const SizedBox(
                height: 28,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      height: 116.h,
                      width: 116.h,
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 32,
                          ),
                          const Icon(
                            size: 28,
                            Icons.groups,
                            color: AppColors.mainColor,
                          ),
                          SizedBox(
                            height: 11.h,
                          ),
                          const Text(
                            "Community",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontFamily: "inters",
                              fontSize: 16,
                              color: AppColors.mainColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 16.w,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          borderRadius: BorderRadius.circular(20)),
                      height: 116.h,
                      width: 116.w,
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 32,
                          ),
                          const Icon(
                            size: 28,
                            Icons.question_mark_outlined,
                            color: AppColors.mainColor,
                          ),
                          SizedBox(
                            height: 11.h,
                          ),
                          const Text(
                            "questions",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontFamily: "inters",
                              fontSize: 16,
                              color: AppColors.mainColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          borderRadius: BorderRadius.circular(20)),
                      height: 116.h,
                      width: 116.w,
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 32,
                          ),
                          const Icon(
                            size: 28,
                            Icons.library_books,
                            color: AppColors.mainColor,
                          ),
                          SizedBox(
                            height: 11.h,
                          ),
                          const Text(
                            "Library",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontFamily: "inters",
                              fontSize: 16,
                              color: AppColors.mainColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              Row(
                children: [
                  const Text(
                    "Top doctors",
                    style: TextStyle(
                        fontFamily: "inters",
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                  const Spacer(),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "See all",
                        style: TextStyle(
                            color: Colors.grey,
                            decoration: TextDecoration.underline),
                      )),
                ],
              ),
              Expanded(
                  child: ListView.separated(
                      itemBuilder: (context, index) => Container(
                            width: double.infinity,
                            height: 170.h,
                            padding: EdgeInsetsDirectional.only(
                                start: 6.w, end: 16.w, top: 24.h, bottom: 22.h),
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
                                                  fontFamily: "inter",fontWeight: FontWeight.w600)),
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
                                          style: TextStyle(fontWeight: FontWeight.w500,
                                              fontFamily: "poppins",
                                              fontSize: 12,
                                              color: Colors.black
                                                  .withOpacity(.56))),
                                      const Spacer(),
                                      FilledButton(
                                          onPressed: () {},
                                          style: OutlinedButton.styleFrom(
                                            minimumSize:
                                                Size(127.w, 38.h),
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
                                          child:  Text("Book now",style: TextStyle(color: getMyMaterialColor(),fontWeight: FontWeight.w600),))
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                      separatorBuilder: (context, index) => SizedBox(
                            height: 24.h,
                          ),
                      itemCount: 2)),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        index: 0,
        height: 60.0,
        items: <Widget>[
          Column(
            children: [
              SvgPicture.asset("assets/icons/svg/home.svg"),
              Text("Home", style: TextStyle(color: Colors.black.withOpacity(.37),fontFamily: "poppins",fontSize: 12)),
            ],
          ),
          Column(
            children: [
              SvgPicture.asset("assets/icons/svg/scan.svg"),
              Text("scan", style: TextStyle(color: Colors.black.withOpacity(.37),fontFamily: "poppins",fontSize: 12)),
            ],
          ),
          Column(
            children: [
              SvgPicture.asset("assets/icons/svg/chat.svg"),
              Text("chat", style: TextStyle(color: Colors.black.withOpacity(.37),fontFamily: "poppins",fontSize: 12)),
            ],
          ),
          Column(
            children: [
              SvgPicture.asset("assets/icons/svg/profile.svg"),
              SizedBox(height: 4,),
              Text("profile", style: TextStyle(color: Colors.black.withOpacity(.37),fontFamily: "poppins",fontSize: 12)),
            ],
          ),
        ],
        color: Colors.black.withOpacity(.25),
        buttonBackgroundColor: Color(0xffFAFAFA),
        backgroundColor: Color(0xffBFDFDF8C),
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 600),
        onTap: (index) {},
        letIndexChange: (index) => false,
      ),
    );
  }
}
