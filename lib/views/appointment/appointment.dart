import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wameed/core/design/app_field_button.dart';
import 'package:wameed/core/design/app_filled.dart';
import '../../core/design/arrow_back_button.dart';
import '../../main.dart';

class Appointment extends StatefulWidget {
  const Appointment({
    super.key,
  });

  @override
  State<Appointment> createState() => _AppointmentState();
}

class _AppointmentState extends State<Appointment> {
  DateTime selectedDate = DateTime.now();
  int? selectedIndex = 0;
  final List<String> _time = [
    "9:00",
  ];

  int currentDateSelectedIndex = 0;
  ScrollController scrollController = ScrollController();

  List<String> listOfMonths = [
    "Jan",
    "Feb",
    "Mar",
    "Apr",
    "May",
    "Jun",
    "Jul",
    "Aug",
    "Sep",
    "Oct",
    "Nov",
    "Dec"
  ];

  List<String> listOfDays = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const ArrowBackButton(),
          title: const Text("Dr.John Smith",
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: "poppins",
                  fontWeight: FontWeight.w600)),
        ),
        body: SafeArea(
            child: Padding(
                padding: EdgeInsetsDirectional.symmetric(horizontal: 24.w),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            '${listOfMonths[selectedDate.month - 1]}, ${selectedDate.year}',
                            style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ),
                          const SizedBox(
                            width: 3,
                          ),
                          const Icon(Icons.keyboard_arrow_down),
                        ],
                      ),
                      const SizedBox(height: 24),
                      //To show Calendar Widget
                      SizedBox(
                          height: 66.h,
                          child: ListView.separated(
                            separatorBuilder: (BuildContext context, int index) {
                              return const SizedBox(width: 16);
                            },
                            itemCount: 365,
                            controller: scrollController,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (BuildContext context, int index) {
                              return InkWell(
                                onTap: () {
                                  setState(() {
                                    currentDateSelectedIndex = index;
                                    selectedDate =
                                        DateTime.now().add(Duration(days: index));
                                  });
                                },
                                child: Container(
                                  height: 66.h,
                                  width: 54.w,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      boxShadow: const [
                                        BoxShadow(
                                            color: Colors.grey,
                                            offset: Offset(3, 3),
                                            blurRadius: 5)
                                      ],
                                      color: currentDateSelectedIndex == index
                                          ? Colors.grey.shade100
                                          : Colors.grey.shade100),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        DateTime.now()
                                            .add(Duration(days: index))
                                            .day
                                            .toString(),
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color:
                                                currentDateSelectedIndex == index
                                                    ? Colors.grey.shade500
                                                    : getMyMaterialColor()),
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        listOfDays[DateTime.now()
                                                    .add(Duration(days: index))
                                                    .weekday -
                                                1]
                                            .toString(),
                                        style: TextStyle(
                                            fontSize: 14,
                                            color:
                                                currentDateSelectedIndex == index
                                                    ? Colors.grey.shade500
                                                    : getMyMaterialColor()),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          )),
                      const SizedBox(
                        height: 28,
                      ),
                      const Text(
                        "Available Time",
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: "poppins",
                            fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(height: 16),
                  
                      SizedBox(
                        height: 150.h,
                        child: ListView.separated(
                            separatorBuilder: (BuildContext context, int index) {
                              return const SizedBox(width: 16);
                            },
                            itemCount: 24,
                            controller: scrollController,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (BuildContext context, int index) {
                              return InkWell(
                                  onTap: () {
                                    setState(() {
                                      selectedIndex = index;
                                    });
                                  },
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 30.h,
                                        width: 98.w,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            boxShadow: const [
                                              BoxShadow(
                                                  color: Colors.grey,
                                                  offset: Offset(3, 3),
                                                  blurRadius: 5)
                                            ],
                                            color:
                                                currentDateSelectedIndex == index
                                                    ? getMyMaterialColor()
                                                        .withOpacity(.74)
                                                    : Colors.grey.shade100),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Icon(
                                              CupertinoIcons.clock,
                                              color: getMyMaterialColor()
                                                  .withOpacity(.60),
                                              size: 20,
                                            ),
                                            const SizedBox(width: 5),
                                            Text("{$_time}"),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 18,
                                      ),
                                      Container(
                                        height: 30.h,
                                        width: 98.w,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            boxShadow: const [
                                              BoxShadow(
                                                  color: Colors.grey,
                                                  offset: Offset(3, 3),
                                                  blurRadius: 5)
                                            ],
                                            color:
                                                currentDateSelectedIndex == index
                                                    ? getMyMaterialColor()
                                                        .withOpacity(.74)
                                                    : Colors.grey.shade100),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Icon(
                                              CupertinoIcons.clock,
                                              color: getMyMaterialColor()
                                                  .withOpacity(.60),
                                              size: 20,
                                            ),
                                            const SizedBox(width: 5),
                                            const Text("9:00Am"),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 18,
                                      ),
                                      Container(
                                        height: 30.h,
                                        width: 98.w,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            boxShadow: const [
                                              BoxShadow(
                                                  color: Colors.grey,
                                                  offset: Offset(3, 3),
                                                  blurRadius: 5)
                                            ],
                                            color:
                                                currentDateSelectedIndex == index
                                                    ? getMyMaterialColor()
                                                        .withOpacity(.74)
                                                    : Colors.grey.shade100),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Icon(
                                              CupertinoIcons.clock,
                                              color: getMyMaterialColor()
                                                  .withOpacity(.60),
                                              size: 20,
                                            ),
                                            const SizedBox(width: 5),
                                            const Text("9:00Am"),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ));
                            }),
                      ),
                      const SizedBox(
                        height: 28,
                      ),
                      const Text(
                        "Patient Details",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            fontFamily: "poppins"),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const Text(
                        "Full Name",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            fontFamily: "poppins"),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      const AppFilled(
                        text: "",
                      ),
                      SizedBox(
                        height: 24.h,
                      ),
                      const Text(
                        "Age",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            fontFamily: "poppins"),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      const AppFilled(
                        text: "",
                      ),
                      SizedBox(
                        height: 24.h,
                      ),
                      const Text(
                        "Payment Method",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            fontFamily: "poppins"),
                      ),
                      SizedBox(
                        height: 12.h,
                      ),
                      const AppFilled(
                        text: "Choose payment method",
                      ),
                      SizedBox(height: 31.h,),
                      const AppFilledButton(text: "Choose payment method"),
                      SizedBox(height: 31.h,),
                    ],
                  ),
                ))));
  }
}
