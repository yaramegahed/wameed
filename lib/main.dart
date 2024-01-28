
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:wameed/views/home/home.dart';
import 'package:wameed/views/list_doctor/doctor.dart';

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
          useMaterial3: true,
            colorScheme: ColorScheme.fromSwatch(primarySwatch: getMyMaterialColor(),backgroundColor: Colors.white,)
        ),
        home:  const Doctor(),
      )
    );
  }
}
MaterialColor getMyMaterialColor() {
  Color color = const Color(0xff39A7A7);
  return MaterialColor(color.value, {
    50: color.withOpacity(.1),
    100: color.withOpacity(.2),
    200: color.withOpacity(.3),
    300: color.withOpacity(.4),
    400: color.withOpacity(.5),
    500: color.withOpacity(.6),
    600: color.withOpacity(.7),
    700: color.withOpacity(.8),
    800: color.withOpacity(.9),
    900: color,
  });
}


