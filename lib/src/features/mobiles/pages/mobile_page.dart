import 'package:cotiz/src/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';

import '../mobiles.dart';

class MobilePage extends StatefulWidget {
  String? type;

  MobilePage({
    super.key,
    this.type,
  });

  @override
  State<MobilePage> createState() => _MobilePageState();
}

class _MobilePageState extends State<MobilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColorFond,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(4.w),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "${widget.type!} via",
                    style: TextStyle(
                      color: appBlack,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.sp,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      padding: EdgeInsets.all(4.w),
                      decoration: BoxDecoration(
                        color: appWhite,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(Icons.close_outlined),
                    ),
                  ),
                ],
              ),
              Gap(2.h),
              Expanded(
                child: ListView(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 1.h),
                      decoration: BoxDecoration(
                        color: appWhite,
                        borderRadius: BorderRadius.circular(3.w),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withValues(alpha: 0.05),
                            blurRadius: 6,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: ListTile(
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 8.0,
                          vertical: 0.0,
                        ),
                        minVerticalPadding: 0.0,
                        horizontalTitleGap: 2.w,
                        leading: Container(
                          padding: EdgeInsets.all(2.w),
                          height: 5.h,
                          width: 5.h,
                          decoration: BoxDecoration(
                            color: appColor,
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: Text(
                              "CZ",
                              style: TextStyle(
                                color: appBlack,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        title: Text(
                          "Mon compte CotiZ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15.sp,
                            color: appBlack,
                          ),
                        ),
                        subtitle: Text(
                          "Gratuit",
                          style: TextStyle(
                            color: appColorSecond,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        trailing: Icon(Icons.navigate_next_outlined),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 1.h),
                      decoration: BoxDecoration(
                        color: appWhite,
                        borderRadius: BorderRadius.circular(3.w),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withValues(alpha: 0.05),
                            blurRadius: 6,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: ListTile(
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 8.0,
                          vertical: 0.0,
                        ),
                        minVerticalPadding: 0.0,
                        horizontalTitleGap: 2.w,
                        leading: Container(
                          padding: EdgeInsets.all(2.w),
                          height: 5.h,
                          width: 5.h,
                          decoration: BoxDecoration(
                            color: appColorFond,
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage("assets/images/wave.png"),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        title: Text(
                          "Wave",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15.sp,
                            color: appBlack,
                          ),
                        ),
                        subtitle: Text(
                          "1.5% - Frais",
                          style: TextStyle(
                            color: appColorSecond,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        trailing: Icon(Icons.navigate_next_outlined),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 1.h),
                      decoration: BoxDecoration(
                        color: appWhite,
                        borderRadius: BorderRadius.circular(3.w),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withValues(alpha: 0.05),
                            blurRadius: 6,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: ListTile(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  MobileAmountPage(nom: 'Moi'),
                            ),
                          );
                        },
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 8.0,
                          vertical: 0.0,
                        ),
                        minVerticalPadding: 0.0,
                        horizontalTitleGap: 2.w,
                        leading: Container(
                          padding: EdgeInsets.all(2.w),
                          height: 5.h,
                          width: 5.h,
                          decoration: BoxDecoration(
                            color: appColorFond,
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage("assets/images/orange.png"),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        title: Text(
                          "Orange Money",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15.sp,
                            color: appBlack,
                          ),
                        ),
                        subtitle: Text(
                          "1.5% - Frais",
                          style: TextStyle(
                            color: appColorSecond,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        trailing: Icon(Icons.navigate_next_outlined),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 1.h),
                      decoration: BoxDecoration(
                        color: appWhite,
                        borderRadius: BorderRadius.circular(3.w),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withValues(alpha: 0.05),
                            blurRadius: 6,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: ListTile(
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 8.0,
                          vertical: 0.0,
                        ),
                        minVerticalPadding: 0.0,
                        horizontalTitleGap: 2.w,
                        leading: Container(
                          padding: EdgeInsets.all(2.w),
                          height: 5.h,
                          width: 5.h,
                          decoration: BoxDecoration(
                            color: appColorFond,
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage("assets/images/mtn.jpg"),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        title: Text(
                          "Mtn Money",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15.sp,
                            color: appBlack,
                          ),
                        ),
                        subtitle: Text(
                          "1.5% - Frais",
                          style: TextStyle(
                            color: appColorSecond,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        trailing: Icon(Icons.navigate_next_outlined),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 1.h),
                      decoration: BoxDecoration(
                        color: appWhite,
                        borderRadius: BorderRadius.circular(3.w),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withValues(alpha: 0.05),
                            blurRadius: 6,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: ListTile(
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 8.0,
                          vertical: 0.0,
                        ),
                        minVerticalPadding: 0.0,
                        horizontalTitleGap: 2.w,
                        leading: Container(
                          padding: EdgeInsets.all(2.w),
                          height: 5.h,
                          width: 5.h,
                          decoration: BoxDecoration(
                            color: appColorFond,
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage("assets/images/moov.png"),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        title: Text(
                          "Moov Money",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15.sp,
                            color: appBlack,
                          ),
                        ),
                        subtitle: Text(
                          "1.5% - Frais",
                          style: TextStyle(
                            color: appColorSecond,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        trailing: Icon(Icons.navigate_next_outlined),
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
  }
}
