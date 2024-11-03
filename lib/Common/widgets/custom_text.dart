import 'package:fix_my_ride/utills/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String? text;
  final Color? txtColor;
  final String? fontFamily;
  final double? fontSize;

  const CustomText({
    super.key,
    this.text,
    this.txtColor,
    this.fontFamily,
    this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text ?? 'Welcome To Fix My Ride',
      style: TextStyle(
        fontFamily: fontFamily ?? 'Poppins',
        fontSize: fontSize ?? 20,
        fontWeight: FontWeight.w500,
        color: txtColor ?? AppColors.blue100,
      ),
    );
  }
}
