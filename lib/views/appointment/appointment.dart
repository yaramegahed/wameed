import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wameed/core/design/app_field_button.dart';
import 'package:wameed/core/design/app_filled.dart';
import 'package:wameed/views/home/home.dart';
import 'package:wameed/views/payment_card/payment.dart';
import '../../core/design/app_dialog.dart';
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
                            separatorBuilder:
                                (BuildContext context, int index) {
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
                                    selectedDate = DateTime.now()
                                        .add(Duration(days: index));
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
                                            color: currentDateSelectedIndex ==
                                                    index
                                                ? Colors.grey.shade500
                                                : Theme.of(context).primaryColor),
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
                                            color: currentDateSelectedIndex ==
                                                    index
                                                ? Colors.grey.shade500
                                                : Theme.of(context).primaryColor),
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
                            separatorBuilder:
                                (BuildContext context, int index) {
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
                                            color: currentDateSelectedIndex ==
                                                    index
                                                ? Theme.of(context).primaryColor
                                                    .withOpacity(.74)
                                                : Colors.grey.shade100),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Icon(
                                              CupertinoIcons.clock,
                                              color: Theme.of(context).primaryColor
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
                                            color: currentDateSelectedIndex ==
                                                    index
                                                ? Theme.of(context).primaryColor
                                                    .withOpacity(.74)
                                                : Colors.grey.shade100),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Icon(
                                              CupertinoIcons.clock,
                                              color: Theme.of(context).primaryColor
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
                                            color: currentDateSelectedIndex ==
                                                    index
                                                ? Theme.of(context).primaryColor
                                                    .withOpacity(.74)
                                                : Colors.grey.shade100),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Icon(
                                              CupertinoIcons.clock,
                                              color: Theme.of(context).primaryColor
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
                      Text(
                        "Full Name",
                        style: TextStyle(
                            color: const Color(0Xff000000).withOpacity(.51),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            fontFamily: "poppins"),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      const AppFilled(
                        text: "",
                        height: 48,
                      ),
                      SizedBox(
                        height: 24.h,
                      ),
                      Text(
                        "Age",
                        style: TextStyle(
                            color: const Color(0Xff000000).withOpacity(.51),
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
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const PaymentView(),
                            ),
                          );
                        },
                        child: Container(
                          height: 48.h,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            border: Border.all(color: const Color(0xff39A7A7).withOpacity(.21)),
                            color: const Color(0xffF2F2F2).withOpacity(.46),
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Row(
                              children: [
                                Text(
                                  "Choose payment method",
                                  style: TextStyle(
                                    fontFamily: "poppins",
                                      color: const Color(0xff000000).withOpacity(.31),
                                      fontWeight: FontWeight.w500),
                                ),
                                const Spacer(),
                                 Icon(Icons.arrow_forward_ios,color: const Color(0xff000000).withOpacity(.60),)
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 31.h,
                      ),
                       AppFilledButton(
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return AppDialog(
                                  buttonText: "Back To Home",
                                  text: "Your appointment",
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                        builder: (context) => const HomeView()));
                                  },
                                );
                              });
                        },
                          text: "Set an appointment", fontFamily: "poppins"),
                      SizedBox(
                        height: 31.h,
                      ),
                    ],
                  ),
                ))));
  }
}
