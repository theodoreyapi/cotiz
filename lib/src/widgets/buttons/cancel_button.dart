import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../themes/themes.dart';


class CancelButton extends StatelessWidget {
  final String title;
  final Function() onPressed;
  final double? height;
  final double? width;
  final double? fontSize;

  const CancelButton(
      this.title, {super.key,
        required this.onPressed,
        this.height,
        this.width,
        this.fontSize,
      });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? double.infinity,
      height: height ?? 14.w,
      padding: EdgeInsets.symmetric(horizontal: 1.w),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: appWhite,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(3.w),
            side: BorderSide(color: appColor),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          title,
          style: TextStyle(
            fontSize: fontSize ?? 18.sp,
            color: appColor,
            fontWeight: FontWeight.normal,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}