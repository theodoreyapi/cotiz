import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

import '../../themes/themes.dart';


class CancelButtonIcon extends StatelessWidget {
  final String title;
  final Function() onPressed;
  final double? height;
  final double? width;
  final double? fontSize;
  final Color? colorIcon;
  final String? icone;
  final double? heightSvg;
  final double? widthSvg;

  const CancelButtonIcon(
      this.title, {super.key,
        required this.onPressed,
        this.height,
        this.width,
        this.fontSize,
        this.colorIcon,
        this.heightSvg,
        this.widthSvg,
        this.icone,
      });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? double.infinity,
      height: height ?? 13.w,
      padding: EdgeInsets.symmetric(horizontal: 1.w),
      child: ElevatedButton.icon(
        icon: SvgPicture.asset(
          icone!,
          height: heightSvg ?? 5.w,
          width: widthSvg ?? 5.w,
          colorFilter: ColorFilter.mode(colorIcon ?? appColor, BlendMode.srcIn),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: appWhite,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(3.w),
            side: BorderSide(color: appColor),
          ),
        ),
        onPressed: onPressed,
        label: Text(
          title,
          style: TextStyle(
            fontSize: fontSize ?? 17.sp,
            color: appColor,
            fontWeight: FontWeight.normal,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}