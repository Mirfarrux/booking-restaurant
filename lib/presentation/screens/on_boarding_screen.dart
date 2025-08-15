import 'package:booking_restaurant/presentation/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final pageController = PageController();

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: pageController,
              children: [
                Column(
                  children: [
                    SizedBox(height: 70.h),
                    SvgPicture.asset(
                      "assets/svgs/s3.svg",
                      width: MediaQuery.of(context).size.width - 100,
                      height: MediaQuery.of(context).size.height * 0.4,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(height: 40.h),
                    Text(
                      "Nearby restaurants",
                      style: TextStyle(fontSize: 30.sp),
                    ),
                    Text(
                      "You don't have to go far to find a good restaurant, \n we have provided all the restaurants that is  \n near you",
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(height: 70.h),
                    SvgPicture.asset(
                      "assets/svgs/s2.svg",
                      width: MediaQuery.of(context).size.width - 100,
                      height: MediaQuery.of(context).size.height * 0.5,
                    ),
                    SizedBox(height: 40.h),
                    Text(
                      "Select the Favorites Menu",
                      style: TextStyle(fontSize: 30.sp),
                    ),
                    Text(
                      "Now eat well, don't leave the house,You can  \n choose your favorite food only with  \n one click",
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(height: 70.h),
                    SvgPicture.asset(
                      "assets/svgs/s1.svg",
                      width: MediaQuery.of(context).size.width - 100,
                      height: MediaQuery.of(context).size.height * 0.5,
                    ),
                    SizedBox(height: 40.h),
                    Text(
                      "Good food at a cheap price",
                      style: TextStyle(fontSize: 30.sp),
                    ),
                    Text(
                      "You can eat at expensive restaurants with \n affordable price",
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Row(
            children: [
              SizedBox(width: 15.w),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
                child: Text(
                  "Skip",
                  style: TextStyle(fontSize: 20.sp, color: Colors.black),
                ),
              ),
              Spacer(),
              TextButton(
                onPressed: () {
                  if (pageController.page != 2) {
                    pageController.nextPage(
                      duration: const Duration(milliseconds: 600),
                      curve: Curves.linear,
                    );
                  } else {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginScreen(),
                      ),
                    );
                  }
                },
                child: Icon(
                  Icons.arrow_forward,
                  size: 30.sp,
                  color: Colors.black,
                ),
              ),
              SizedBox(width: 15.w),
            ],
          ),
          SizedBox(height: 70.h),
        ],
      ),
    );
  }
}
