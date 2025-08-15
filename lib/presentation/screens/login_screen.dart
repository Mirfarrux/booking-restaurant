import 'package:booking_restaurant/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: SvgPicture.asset(
              "assets/svgs/s4.svg",
              width: 400.w,
              height: 400.h,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 20.h),
          Text(
            "Welcome",
            style: TextStyle(fontSize: 30.sp, fontWeight: FontWeight.bold),
          ),
          Text(
            "Before enjoying Foodmedia services \n Please register first",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20.sp, color: Colors.grey),
          ),
          SizedBox(height: 80.h),
          InkWell(
            onTap: () {
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                ),
                builder: (context) {
                  return DefaultTabController(
                    length: 2,
                    child: Padding(
                      padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom,
                      ),
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height * 0.7,
                        child: Column(
                          children: [
                            SizedBox(height: 10),
                            TabBar(
                              indicatorColor: Colors.green,
                              labelColor: Colors.green,
                              unselectedLabelColor: Colors.grey,
                              labelStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                              tabs: [
                                Tab(text: "Create Account"),
                                Tab(text: "Login"),
                              ],
                            ),
                            Expanded(
                              child: TabBarView(
                                children: [
                                  SingleChildScrollView(
                                    padding: EdgeInsets.all(20),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("Full Name"),
                                        SizedBox(height: 5),
                                        TextField(
                                          decoration: InputDecoration(
                                            hintText: "Enter your full name",
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 15),
                                        Text("Email address"),
                                        SizedBox(height: 5),
                                        TextField(
                                          decoration: InputDecoration(
                                            hintText:
                                                "Eg namaemail@emailkamu.com",
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 15),
                                        Text("Password"),
                                        SizedBox(height: 5),
                                        TextField(
                                          obscureText: true,
                                          decoration: InputDecoration(
                                            hintText: "**** **** ****",
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 20),
                                        SizedBox(
                                          width: double.infinity,
                                          height: 50,
                                          child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: Colors.grey[200],
                                              foregroundColor: Colors.grey,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                            ),
                                            onPressed: () {},
                                            child: Text(
                                              "Registration",
                                              style: TextStyle(fontSize: 16),
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 15),
                                        SizedBox(
                                          width: double.infinity,
                                          height: 50,
                                          child: OutlinedButton.icon(
                                            icon: SvgPicture.asset(
                                              "assets/svgs/google.svg",
                                              width: 24,
                                              height: 24,
                                            ),
                                            label: Text(
                                              "Sign up with Google",
                                              style: TextStyle(
                                                color: Colors.black,
                                              ),
                                            ),
                                            style: OutlinedButton.styleFrom(
                                              side: BorderSide(
                                                color: Colors.grey[300]!,
                                              ),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                            ),
                                            onPressed: () {},
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SingleChildScrollView(
                                    padding: EdgeInsets.all(20),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("Email address"),
                                        SizedBox(height: 5),
                                        TextField(
                                          decoration: InputDecoration(
                                            hintText: "Enter your email",
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 15),
                                        Text("Password"),
                                        SizedBox(height: 5),
                                        TextField(
                                          obscureText: true,
                                          decoration: InputDecoration(
                                            hintText: "**** **** ****",
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 20),
                                        SizedBox(
                                          width: double.infinity,
                                          height: 50,
                                          child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: Colors.grey[200],
                                              foregroundColor: Colors.grey,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                            ),
                                            onPressed: () {},
                                            child: Text("Login"),
                                          ),
                                        ),
                                        SizedBox(height: 15),
                                        SizedBox(
                                          width: double.infinity,
                                          height: 50,
                                          child: OutlinedButton.icon(
                                            icon: SvgPicture.asset(
                                              "assets/svgs/google.svg",
                                              width: 24,
                                              height: 24,
                                            ),
                                            label: Text(
                                              "Sign in with Google",
                                              style: TextStyle(
                                                color: Colors.black,
                                              ),
                                            ),
                                            style: OutlinedButton.styleFrom(
                                              side: BorderSide(
                                                color: Colors.grey[300]!,
                                              ),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                            ),
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      HomeScreen(),
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
            },
            child: Container(
              width: 200,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color(0xFF32B768),
              ),
              child: Center(
                child: Text(
                  "Log In",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ),
          SizedBox(height: 50.h),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text: 'By logging in or registering, you have agreed to the ',
              style: TextStyle(color: Colors.black, fontSize: 14),
              children: [
                TextSpan(
                  text: 'Terms and \n Conditions',
                  style: TextStyle(
                    color: Color(0xFF32B768),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: ' and ',
                  style: TextStyle(color: Colors.black),
                ),
                TextSpan(
                  text: 'Privacy Policy',
                  style: TextStyle(
                    color: Color(0xFF32B768),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: '.',
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
