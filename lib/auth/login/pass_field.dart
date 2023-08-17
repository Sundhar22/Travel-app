import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/colors.dart';
import '../../utils/screen_size.dart';

class PassField extends StatefulWidget {
  const PassField({super.key});

  @override
  State<PassField> createState() => _PassFieldState();
}

class _PassFieldState extends State<PassField> { bool hide=true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: hide,
      style: TextStyle(color: AppColor.primaryColor),
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        suffix: GestureDetector(
          onTap: () {
            setState(() {
              hide=!hide;
            });
          },
          child: SvgPicture.asset(
            color: AppColor.tertiaryColor,
            hide?  'assets/svg/eye.svg':'assets/svg/hide_eye.svg',
            height: screenHeight(25),
            width: screenWidth(25),
          ),
        ),
        labelText: 'Password',
        labelStyle: TextStyle(
            color: AppColor.tertiaryColor,
            fontWeight: FontWeight.w500,
            fontSize: screenHeight(17)),
        hintStyle: TextStyle(
            color: AppColor.tertiaryColor,
            fontWeight: FontWeight.w500,
            fontSize: screenHeight(10)),
        border: UnderlineInputBorder(
          borderSide: BorderSide(color: AppColor.secondaryColor),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide:
          BorderSide(color: AppColor.primaryColor, width: 1.3),
        ),
      ),
    );
  }
}
