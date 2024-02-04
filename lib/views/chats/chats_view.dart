import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wameed/core/design/chatuser.dart';

import '../chat_detail/chatd_view.dart';
import '../home/home.dart';
import '../profile/profile_view.dart';
import '../scan/view.dart';

class ChatView extends StatefulWidget {
  const ChatView({Key? key}) : super(key: key);

  @override
  State<ChatView> createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> {
  // int _page = 0;
  //
  // final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey =
  // GlobalKey<CurvedNavigationBarState>();


  List<ChatUsers> chatUsers = [
    ChatUsers(
      name: "Dr.Amilia john",
      messageText: "Thank you for your support",
      imageURL: "assets/images/amilia.png",
      time: "yesterday",
      isMessageRead: true,
    ),
    ChatUsers(
      name: "Dr.Amilia john",
      messageText: "Thank you for your support",
      imageURL: "assets/images/amilia.png",
      time: "today",
      isMessageRead: false,
    ),
    ChatUsers(
      name: "Dr.Amilia john",
      messageText: "Thank you for your support",
      imageURL: "assets/images/amilia.png",
      time: "now",
      isMessageRead: true,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // toolbarHeight: 100,
        centerTitle: true,
        title: const Text(
          "Chats",
        ),
        titleTextStyle: TextStyle(
            fontSize: 24.sp,
            fontFamily: "poppins",
            fontWeight: FontWeight.w600, color: Colors.black
        ),
      ),
      body: Padding(
        padding: const EdgeInsetsDirectional.only(start: 24, end: 24),
        child: Column(
          children: [
            const Row(
              children: [
                Text(
                  "Messages",
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: "inter",
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: chatUsers.length,
                itemBuilder: (context, index)=> InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => ChatDetail(),));
                  },
                  child: Container(
                    height: 72.h,
                    margin: EdgeInsets.only(bottom: 24.h),
                    child: Row(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundImage:
                          AssetImage(chatUsers[index].imageURL),
                          maxRadius: 35,
                        ),
                        SizedBox(width: 8.w),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(top: 13.5.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  children: [
                                    Text(
                                      chatUsers[index].name,
                                      style: const TextStyle(
                                          fontSize: 18,
                                          fontFamily: "inter",
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Spacer(),
                                    Text(
                                      chatUsers[index].time,
                                      style: TextStyle(
                                        fontFamily: "inter",
                                        fontSize: 12,
                                        fontWeight: chatUsers[index].isMessageRead
                                            ? FontWeight.w600
                                            : FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 8.h),
                                Row(
                                  children: [
                                    Text(
                                      chatUsers[index].messageText,
                                      style: TextStyle(
                                        fontFamily: "inter",
                                        fontSize: 12.sp,
                                        color: const Color(0xff000000)
                                            .withOpacity(.36),
                                        fontWeight:
                                        chatUsers[index].isMessageRead
                                            ? FontWeight.w500
                                            : FontWeight.w500,
                                      ),
                                    ),
                                    Spacer(),
                                    CircleAvatar(
                                      backgroundColor: Theme.of(context).primaryColor,
                                      radius: 10.w,
                                      child: Text("1",style: TextStyle(color: Colors.white),),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      // bottomNavigationBar: CurvedNavigationBar(
      //   height: 99.h,
      //   iconPadding: 30,
      //   key: _bottomNavigationKey,
      //   index: 0,
      //   items: [
      //     CurvedNavigationBarItem(
      //       child: Align(
      //         alignment: Alignment.bottomCenter,
      //         child: SvgPicture.asset("assets/icons/svg/home.svg"),
      //       ),
      //       label: 'Home',
      //     ),
      //     CurvedNavigationBarItem(
      //       child: Align(
      //         alignment: Alignment.bottomCenter,
      //         child: SvgPicture.asset("assets/icons/svg/scan.svg"),
      //       ),
      //       label: 'Scan',
      //     ),
      //     CurvedNavigationBarItem(
      //       child: Align(
      //         alignment: Alignment.bottomCenter,
      //         child: SvgPicture.asset("assets/icons/svg/chat.svg"),
      //       ),
      //       label: 'Chat',
      //     ),
      //     CurvedNavigationBarItem(
      //       child: Align(
      //         alignment: Alignment.bottomCenter,
      //         child: SvgPicture.asset("assets/icons/svg/profile.svg"),
      //       ),
      //       label: 'Personal',
      //     ),
      //   ],
      //   color: const Color(0xffF9F9F9).withOpacity(.88),
      //   buttonBackgroundColor: const Color(0xffFAFAFA),
      //   backgroundColor: const Color(0XffBFDFDF).withOpacity(.55),
      //   animationCurve: Curves.easeInOut,
      //   animationDuration: const Duration(milliseconds: 600),
      //   onTap: (index) {
      //     setState(() {
      //       _page = index;
      //     });
      //   },
      //   letIndexChange: (index) => true,
      // ),
    );
  }

  // Widget _getPage(int _page) {
  //   switch (_page) {
  //     case 0:
  //     // Return the widget for the Home page
  //       return const HomeView();
  //     case 1:
  //     // Return the widget for the Scan page
  //       return const ScanView();
  //     case 2:
  //     // Return the widget for the Chat page
  //       return const ChatView();
  //     case 3:
  //     // Return the widget for the Personal page
  //       return const ProfileView();
  //     default:
  //       return const HomeView();
  //   }
  // }
}
