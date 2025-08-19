import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  SizedBox(width: 10.w),
                  IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
                  Spacer(),
                  Icon(Icons.location_on, color: Colors.green),
                  Text(
                    "Agrabad 435, Chittagong",
                    style: TextStyle(fontSize: 15.sp, color: Colors.grey),
                  ),
                  Spacer(),
                  Icon(Icons.person),
                  SizedBox(width: 10.w),
                ],
              ),
              SizedBox(
                height: 60.h,
                width: MediaQuery.of(context).size.width / 1.2,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search",
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.r),
                      borderSide: BorderSide(color: Colors.black, width: 2),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              Container(
                width: MediaQuery.of(context).size.width / 1.2,
                height: 150.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  gradient: LinearGradient(
                    colors: [Color(0xFFFFA921), Color(0xFFFFD697)],
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(width: 10.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SvgPicture.asset("assets/svgs/burger.svg"),
                            Text(
                              "Flash Offer",
                              style: TextStyle(
                                fontSize: 25.sp,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "We are here with the best",
                              style: TextStyle(
                                fontSize: 15.sp,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "deserts intown",
                              style: TextStyle(
                                fontSize: 15.sp,
                                color: Colors.white,
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                "Order >",
                                style: TextStyle(
                                  fontSize: 15.sp,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Image.asset("assets/images/burger.png"),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.h),
              Row(
                children: [
                  SizedBox(width: 20.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Today New Arivable",
                        style: TextStyle(fontSize: 20.sp, color: Colors.black),
                      ),
                      Text(
                        "Best of the today  food list update",
                        style: TextStyle(fontSize: 15.sp, color: Colors.grey),
                      ),
                    ],
                  ),
                  Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "See All >",
                      style: TextStyle(color: Colors.grey, fontSize: 20.sp),
                    ),
                  ),
                  SizedBox(width: 20.w),
                ],
              ),

              SizedBox(height: 20.h),
              Row(
                children: [
                  cardFood(
                    "assets/images/food1.png",
                    "Chicken Biryani",
                    "Ambrosia Hotel &",
                    "Restaurant",
                  ),
                  SizedBox(width: 20.w),
                  cardFood(
                    "assets/images/food2.png",
                    "Sauce Tonkatsu ",
                    "Handi Restaurant,",
                    "Chittagong",
                  ),
                  SizedBox(width: 20.w),
                  cardFood(
                    "assets/images/food1.png",
                    "Plov",
                    "5 Qozon",
                    "Restaurant",
                  ),
                ],
              ),

              SizedBox(height: 20.h),
              Row(
                children: [
                  SizedBox(width: 20.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Booking Restaurant",
                        style: TextStyle(fontSize: 20.sp, color: Colors.black),
                      ),
                      Text(
                        "Check your city Near by Restaurant",
                        style: TextStyle(fontSize: 15.sp, color: Colors.grey),
                      ),
                    ],
                  ),
                  Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "See All >",
                      style: TextStyle(color: Colors.grey, fontSize: 20.sp),
                    ),
                  ),
                  SizedBox(width: 20.w),
                ],
              ),

              SizedBox(height: 20.h),
              buildCardRest(
                "assets/images/rest1.png",
                "Hotel Zaman Restaurant",
                "kazi Deiry, Taiger Pass",
                "Chittagong",
              ),
              SizedBox(height: 20.h),
              buildCardRest(
                "assets/images/rest2.png",
                "Tava Restaurant",
                "Zakir Hossain Rd, ",
                "Chittagong",
              ),
              SizedBox(height: 20.h),
              buildCardRest(
                "assets/images/rest1.png",
                "Haatkhola",
                "6 Surson Road,",
                "Chittagong",
              ),
            ],
          ),
        ),
      ),
    );
  }

  Card buildCardRest(
    String image1,
    String text10,
    String text20,
    String text30,
  ) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.r)),
      elevation: 5,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Rasm
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15.r),
              bottomLeft: Radius.circular(15.r),
            ),
            child: Image.asset(
              image1,
              width: 100.w,
              height: 100.h,
              fit: BoxFit.cover,
            ),
          ),

          SizedBox(width: 10.w),

          // Ma'lumotlar qismi
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Restoran nomi
                Text(
                  text10,
                  style: TextStyle(
                    fontSize: 20.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),

                SizedBox(height: 5.h),

                // Lokatsiya va Book tugmasi yonma-yon
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.location_on, color: Colors.green, size: 20.sp),

                    SizedBox(width: 5.w),

                    // Manzil
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          text20,
                          style: TextStyle(fontSize: 15.sp, color: Colors.grey),
                        ),
                        Text(
                          text30,
                          style: TextStyle(fontSize: 15.sp, color: Colors.grey),
                        ),
                      ],
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: 100.w,
                        height: 40.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.r),
                          color: Colors.green,
                        ),
                        child: Center(
                          child: Text(
                            "Book",
                            style: TextStyle(
                              fontSize: 15.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 15.w),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Card cardFood(String image, String text2, String text3, String text4) {
    return Card(
      child: SizedBox(
        height: 200.h,
        width: 150.h,
        child: Column(
          children: [
            Image.asset(image),
            Text(text2, style: TextStyle(fontSize: 20.sp)),
            Row(
              children: [
                Icon(Icons.location_on, color: Colors.green),
                Text(
                  text3,
                  style: TextStyle(fontSize: 15.sp, color: Colors.black),
                ),
              ],
            ),
            Text(text4),
          ],
        ),
      ),
    );
  }
}
