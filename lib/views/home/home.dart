
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wameed/main.dart';
import '../../core/design/arrow_back_button.dart';
import '../../core/design/colors.dart';
import '../../core/design/text.logo.dart';
import '../chats/chats_view.dart';
import '../profile/profile_view.dart';
import '../scan/view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeState();
}

class _HomeState extends State<HomeView> {
  int _page = 0;


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
              SizedBox(
                height: 28.h,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xffF2F2F2),
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        height: 116.h,
                        width: 116.h,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 32.h,
                            ),
                            const Icon(
                              size: 28,
                              Icons.groups,
                              color: AppColors.mainColor,
                            ),
                            SizedBox(
                              height: 4.h,
                            ),
                            Text(
                              "Community",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontFamily: "inters",
                                fontSize: 16.sp,
                                color: AppColors.mainColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 16.w,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                            color: const Color(0xffF2F2F2),
                            borderRadius: BorderRadius.circular(20)),
                        height: 116.h,
                        width: 116.w,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 32.h,
                            ),
                            const Icon(
                              size: 28,
                              Icons.question_mark_outlined,
                              color: AppColors.mainColor,
                            ),
                            SizedBox(
                              height: 4.h,
                            ),
                            Text(
                              "questions",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontFamily: "inters",
                                fontSize: 16.sp,
                                color: AppColors.mainColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 16.w,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                            color: const Color(0xffF2F2F2),
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
                              height: 4.h,
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
                    ),
                    SizedBox(width: 16.w),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                            color: const Color(0xffF2F2F2),
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
                              Icons.gamepad,
                              color: AppColors.mainColor,
                            ),
                            SizedBox(
                              height: 4.h,
                            ),
                            const Text(
                              "Puzzle",
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
                    ),
                    SizedBox(width: 16.w),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                            color: const Color(0xffF2F2F2),
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
                              Icons.mail_rounded,
                              color: AppColors.mainColor,
                            ),
                            SizedBox(
                              height: 4.h,
                            ),
                            const Text(
                              "Motivzone",
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
                      child: Text(
                        "See all",
                        style: TextStyle(
                            color: const Color(0xff000000).withOpacity(.40),
                            decoration: TextDecoration.underline),
                      )),
                ],
              ),
              Expanded(
                  child: ListView.separated(
                      itemBuilder: (context, index) =>
                          Container(
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
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(top: 8.h),
                                        child: Row(
                                          children: [
                                            Text("Dr. John Smith",
                                                style: TextStyle(
                                                    fontSize: 18.sp,
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
                                      ),
                                      SizedBox(
                                        height: 4.h,
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
                                            backgroundColor: Colors.transparent,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                BorderRadius.circular(12.r),
                                                side: BorderSide(
                                                    color: Theme
                                                        .of(context)
                                                        .primaryColor,
                                                    style: BorderStyle.solid,
                                                    width: 1.w)),
                                          ),
                                          child: Text(
                                            "Book now",
                                            style: TextStyle(
                                                color: Theme.of(context).primaryColor,
                                                fontWeight: FontWeight.w600),
                                          ))
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                      separatorBuilder: (context, index) =>
                          SizedBox(
                            height: 24.h,
                          ),
                      itemCount: 2)),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        iconPadding: 30,
        height: 99.h,
        // key: _bottomNavigationKey,
        index: 1,
        items: [
          CurvedNavigationBarItem(

            child: Align(
              alignment: Alignment.bottomCenter,
              child: SvgPicture.asset("assets/icons/svg/home.svg"),
            ),
            label: 'Home',
          ),
          CurvedNavigationBarItem(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: SvgPicture.asset("assets/icons/svg/scan.svg"),
            ),
            label: 'Scan',
          ),
          CurvedNavigationBarItem(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: SvgPicture.asset("assets/icons/svg/chat.svg"),
            ),
            label: 'Chat',
          ),
          CurvedNavigationBarItem(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: SvgPicture.asset("assets/icons/svg/profile.svg"),
            ),
            label: 'Personal',
          ),
        ],
        color: const Color(0xffF9F9F9).withOpacity(.88),
        buttonBackgroundColor: const Color(0xffFAFAFA),
        backgroundColor: Colors.transparent,
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 600),
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
        letIndexChange: (index) => true,
      ),

    );
  }

  Widget _getPage(int page) {
    switch (page) {
      case 0:
      // Return the widget for the Home page
        return const HomeView();
      case 1:
      // Return the widget for the Scan page
        return const ScanView();
      case 2:
      // Return the widget for the Chat page
        return const ChatView();
      case 3:
      // Return the widget for the Personal page
        return const ProfileView();
      default:
        return const HomeView();
    }
  }
}
