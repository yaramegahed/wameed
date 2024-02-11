import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wameed/core/design/chatuser.dart';

import '../chat_detail/view.dart';

class ChatView extends StatefulWidget {
  const ChatView({Key? key}) : super(key: key);

  @override
  State<ChatView> createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> {
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
        centerTitle: true,
        title: const Text(
          "Chats",
        ),
        titleTextStyle: TextStyle(
            fontSize: 24.sp,
            fontFamily: "poppins",
            fontWeight: FontWeight.w600,
            color: Colors.black),
      ),
      body: Padding(
        padding: EdgeInsetsDirectional.only(start: 24.w, end: 24.w),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsetsDirectional.only(bottom: 24.h),
              child: Row(
                children: [
                  Text(
                    "Messages",
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontFamily: "inter",
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: chatUsers.length,
                itemBuilder: (context, index) => InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ChatDetailView(),
                    ));
                  },
                  child: Container(
                    height: 72.h,
                    margin: EdgeInsets.only(bottom: 24.h),
                    child: Row(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundImage:
                              AssetImage(chatUsers[index].imageURL),
                          maxRadius: 35.r,
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
                                      style: TextStyle(
                                          fontSize: 18.sp,
                                          fontFamily: "inter",
                                          fontWeight: FontWeight.w600),
                                    ),
                                    const Spacer(),
                                    Text(
                                      chatUsers[index].time,
                                      style: TextStyle(
                                        fontFamily: "inter",
                                        fontSize: 12.sp,
                                        fontWeight:
                                            chatUsers[index].isMessageRead
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
                                    const Spacer(),
                                    CircleAvatar(
                                      backgroundColor:
                                          Theme.of(context).primaryColor,
                                      radius: 10.w,
                                      child: const Text(
                                        "1",
                                        style: TextStyle(color: Colors.white),
                                      ),
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
    );
  }
}
