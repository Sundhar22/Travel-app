import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_buddy/auth/login/pass_field.dart';
import 'package:travel_buddy/utils/colors.dart';
import 'package:travel_buddy/utils/screen_size.dart';

import 'auth/login/email_field.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenSize().init(context);
    return MaterialApp(
        title: 'Travel Buddy',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            primary: AppColor.primaryColor,
            seedColor: AppColor.primaryColor,
          ),
          fontFamily: 'SF-Pro',
          textTheme:
              TextTheme(bodyLarge: TextStyle(color: AppColor.quaternaryColor)),
          useMaterial3: true,
        ),
        home: Login());
  }
}

class Login extends StatefulWidget {
  Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  // final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth(20)),
            child: Form(
              // key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: screenHeight(155),
                  ),
                  Text(
                    "Log in",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                      fontSize: screenHeight(25),
                    ),
                  ),
                  SizedBox(
                    height: screenHeight(15),
                  ),
                  EmailField(),
                  PassField(),
                  SizedBox(
                    height: screenHeight(5),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Forget Password?',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: AppColor.tertiaryColor),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: screenHeight(50),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                        fixedSize: Size.fromHeight(screenHeight(50)),
                        backgroundColor: AppColor.primaryColor,
                        foregroundColor: Colors.white),
                    onPressed: () {},
                    child: const Center(
                      child: Text(
                        'Login',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: screenHeight(15),
                  ),
                  Center(
                    child: Text(
                      style: TextStyle(color: AppColor.secondaryColor),
                      textAlign: TextAlign.center,
                      'By clicking the \" Login\" button,you accept \nthe terms of the Privacy Policy',
                    ),
                  ),
                  SizedBox(
                    height: screenHeight(20),
                  ),
                  Center(
                    child: Text(
                        style: TextStyle(color: AppColor.secondaryColor),
                        textAlign: TextAlign.center,
                        'or sign in with'),
                  ),
                  SizedBox(
                    height: screenHeight(15),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                            margin:
                                EdgeInsets.symmetric(horizontal: screenWidth(5)),
                            padding: EdgeInsets.all(screenHeight(10)),
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(screenHeight(50)),
                                border: Border.all(
                                    color: AppColor.primaryColor, width: 1.5)),
                            child: SvgPicture.asset(
                              'assets/svg/facebook.svg',
                              height: screenHeight(25),
                              width: screenWidth(25),
                            )),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                            margin:
                                EdgeInsets.symmetric(horizontal: screenWidth(5)),
                            padding: EdgeInsets.all(screenHeight(10)),
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(screenHeight(50)),
                                border: Border.all(
                                    color: AppColor.primaryColor, width: 1.5)),
                            child: SvgPicture.asset(
                              'assets/svg/google.svg',
                              height: screenHeight(25),
                              width: screenWidth(25),
                            )),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: screenHeight(75),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Center(
                        child: Text(
                      'Register new account',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: screenHeight(15)),
                    )),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
