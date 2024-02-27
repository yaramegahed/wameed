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
  String? _rating;
  String? _imagePath;
  final bool _isVertical = false;

  @override
  void initState() {
    _ratingController = TextEditingController(text: "3.0");
    _imagePath = "assets/images/hi.png";

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
              padding: EdgeInsetsDirectional.only(bottom: 32.h),
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
                    padding:
                        EdgeInsetsDirectional.only(top: 100.h, bottom: 72.w),
                    child: Image.asset(_imagePath!,
                        height: 100.h, width: 93.w),
                  ),
                  RatingBar(
                    initialRating: 0,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    ratingWidget: RatingWidget(
                      full: const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      half: const Icon(
                        Icons.star_half,
                        color: Colors.amber,
                      ),
                      empty: const Icon(
                        Icons.star_border,
                        color: Colors.grey,
                      ),
                    ),
                    itemPadding: EdgeInsets.symmetric(horizontal: 4.h),
                    onRatingUpdate: (rating) {
                      print(rating);
                      if (0 < rating && rating < 2) {
                        _rating = "Bad";
                        _imagePath = "assets/images/bad.png";
                      } else if (rating > 2 && rating <= 3) {
                        _rating = "Good";
                        _imagePath = "assets/images/good.png";
                      } else if (rating > 3 && rating <= 4) {
                        _rating = "Very good";
                      } else if(rating>4) {
                         _rating = "Excellent";
                      }
                      setState(() {

                      });
                    },
                  ),
                  SizedBox(
                    height: 20.0.h,
                  ),
                  // if(_rating != null)
                      Text(
                          _rating!=null?" $_rating":"Hi",
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
