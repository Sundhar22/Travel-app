
import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import '../../utils/screen_size.dart';

class EmailField extends StatelessWidget {
  const EmailField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(color: AppColor.primaryColor),
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        if (value!.isEmpty ||
            !RegExp(r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
                .hasMatch(value)) {
          return "Enter Correct Email Address";
        } else {
          return null;
        }
      },
      decoration: InputDecoration(
        labelText: 'Email',
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
