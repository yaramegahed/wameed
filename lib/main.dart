
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wameed/core/e.dart';
import 'package:wameed/core/ex.dart';
import 'package:wameed/core/ex1.dart';
import 'package:wameed/views/after_scan/after_scan.dart';
import 'package:wameed/views/appointment/appointment.dart';
import 'package:wameed/views/chat_detail/chatd_view.dart';
import 'package:wameed/views/chats/chats_view.dart';

import 'package:wameed/views/home/home.dart';
import 'package:wameed/views/list_doctor/doctor.dart';
import 'package:wameed/views/motivzone/motiv_zone.dart';
import 'package:wameed/views/payment_card/payment.dart';
import 'package:wameed/views/profile/profile_view.dart';
import 'package:wameed/views/scan/view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return ScreenUtilInit(
      designSize: const Size(428, 926),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          appBarTheme: AppBarTheme(
            color: Colors.white,
            elevation: 0.0
          ),
          scaffoldBackgroundColor: Colors.white,
          useMaterial3: true,
            colorScheme: ColorScheme.fromSeed(
              seedColor: Color(0xff39A7A7),
              primary: Color(0xff39A7A7),
              background: Color(0xff39A7A7),
            )
        ),
        home: const ChatView(),
      )
    );
  }
}


