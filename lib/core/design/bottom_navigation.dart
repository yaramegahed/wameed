import 'package:flutter/material.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wameed/views/chats/chats_view.dart';
import 'package:wameed/views/home/home.dart';
import 'package:wameed/views/profile/profile_view.dart';
import 'package:wameed/views/scan/view.dart';

class Bottom extends StatefulWidget {
  const Bottom({super.key});

  @override
  _BottomState createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  int _page = 0;

  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey =
  GlobalKey<CurvedNavigationBarState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _getPage(_page),
      bottomNavigationBar: CurvedNavigationBar(
        height: 99.h,
        iconPadding: 30,
        key: _bottomNavigationKey,
        index: 0,
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
        backgroundColor: const Color(0XffBFDFDF).withOpacity(.55),
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
        return const HomeView(); // Handle other cases if needed
    }
  }
}
