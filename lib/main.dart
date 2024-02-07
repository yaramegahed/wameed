
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wameed/views/after_scan/view.dart';
import 'package:wameed/views/appointment/view.dart';
import 'package:wameed/views/call/view.dart';
import 'package:wameed/views/chat_detail/view.dart';
import 'package:wameed/views/chats/view.dart';

import 'package:wameed/views/home/view.dart';
import 'package:wameed/views/language_setting/view.dart';
import 'package:wameed/views/list_doctor/view.dart';
import 'package:wameed/views/motivzone/view.dart';
import 'package:wameed/views/payment_card/view.dart';
import 'package:wameed/views/profile/view.dart';
import 'package:wameed/views/receipt/view.dart';
import 'package:wameed/views/reservation_receipts/view.dart';
import 'package:wameed/views/scan/view.dart';
import 'package:wameed/views/setting_patient/view.dart';
import 'package:wameed/views/vodafone_cash/view.dart';

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
        home: const ReceiptView(),
      )
    );
  }
}


