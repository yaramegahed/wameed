
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wameed/views/home/main/view.dart';
import 'package:wameed/views/motivzone/view.dart';
import '../../core/design/arrow_back_button.dart';
import '../../core/design/colors.dart';
import '../../core/design/text.logo.dart';
import '../chats/view.dart';
import '../profile/view.dart';
import '../scan_info/view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeState();
}

class _HomeState extends State<HomeView> {
  final iconList = <IconData>[
    Icons.home,
    Icons.message,
    Icons.email,
    Icons.person,
  ];
  int _currentIndex = 0;
  final titleList = <String>[
    "Home",
    "Chats",
    "Motivzone",
    "Profile",
  ];
  List<Widget> screens = [
    HomePage(),
    ChatView(),
    ZoneView(),
    ProfileView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const ArrowBackButton(),
        title: const TextLogo(),
      ),
      body: screens[_currentIndex],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: SizedBox(
        width: 70.w,
        height: 70.w,
        child: DecoratedBox(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(.25),
                  blurStyle: BlurStyle.inner,
                  blurRadius: 8,
                  offset: const Offset(1, 1))
            ],
          ),
          child: FloatingActionButton(
            backgroundColor: const Color(0xffFAFAFA),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ScanView()));
            },
            shape: const CircleBorder(),
            child: Icon(Icons.qr_code_scanner, color: Colors.grey, size: 32.sp),
          ),
        ),
      ),
      bottomNavigationBar: AnimatedBottomNavigationBar.builder(
        height: 99.h,
        tabBuilder: (index, isActive) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                iconList[index],
                color: isActive ? Theme
                    .of(context)
                    .primaryColor : Colors.grey,
              ),
              SizedBox(
                height: 4.h,
              ),
              Text(
                titleList[index],
                style: TextStyle(
                    fontSize: 14.sp,
                    fontFamily: "poppins",
                    color: Colors.grey,
                    fontWeight: FontWeight.w500),
              )
            ],
          );
        },
        activeIndex: _currentIndex,
        shadow: Shadow(blurRadius: 8, color: Colors.grey.withOpacity(.35)),
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.smoothEdge,
        leftCornerRadius: 20.r,
        rightCornerRadius: 20.r,
        onTap: (index) {
          _currentIndex=index;
          setState(() {

          });
        },
        itemCount: titleList.length,
      ),
    );
  }
}