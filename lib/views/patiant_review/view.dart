import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/design/arrow_back_button.dart';

class ReviewView extends StatefulWidget {
  const ReviewView({Key? key}) : super(key: key);

  @override
  State<ReviewView> createState() => _ReviewViewState();
}

class _ReviewViewState extends State<ReviewView> {
  late TextEditingController _ratingController;
  double? _rating;
  final bool _isVertical = false;

  @override
  void initState() {
    _ratingController = TextEditingController(text: "3.0");
    _rating = double.parse(_ratingController.text);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const ArrowBackButton(),
        title: Text(
          "Patient Review",
          style: TextStyle(
            fontSize: 24.sp,
            fontFamily: "poppins",
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.check,
              size: 28,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsetsDirectional.only(top: 91.h, start: 24.w, end: 24.w),
        child: Column(
          children: [
            Padding(
              padding:EdgeInsetsDirectional.only(bottom: 32.h),
              child: Text("Put your Review !",
                  style: TextStyle(
                      fontSize: 18.sp,
                      fontFamily: "poppins",
                      fontWeight: FontWeight.w600)),
            ),
            Container(
              width: double.infinity,
              height: 418.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.r),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xff000000).withOpacity(.42),
                    blurRadius: 11,
                    offset: const Offset(3, 4),
                  ),
                  BoxShadow(
                    color: const Color(0xff39A7A7).withOpacity(.60),
                    blurRadius: 8,
                    offset: const Offset(-2, -2),
                  ),
                  BoxShadow(
                    color: const Color(0xff39A7A7).withOpacity(.60),
                    blurRadius: 8,
                    offset: const Offset(2, 2),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsetsDirectional.only(top: 100.h,bottom: 72.w),
                    child: Image.asset("assets/images/hi.png",height: 100.h,width: 93.w),
                  ),
                  RatingBar.builder(
                    initialRating: _rating!,
                    minRating: 1,
                    direction: _isVertical ? Axis.vertical : Axis.horizontal,
                    allowHalfRating: true,
                    unratedColor: const Color(0xff000000).withOpacity(.61),
                    itemCount: 5,
                    itemSize: 32.0,
                    itemPadding: EdgeInsets.symmetric(horizontal: 4.0.h),
                    itemBuilder: (context, _) => Icon(
                      Icons.star_border,
                      color: Color(0xff000000).withOpacity(.61),
                    ),
                    onRatingUpdate: (rating) {
                      setState(() {
                        _rating = rating;
                      });
                    },
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  _rating != null
                      ? Text(
                          "Rating: $_rating",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      : Container(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
