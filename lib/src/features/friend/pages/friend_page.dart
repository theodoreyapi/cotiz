import 'package:cotiz/constants/constants.dart';
import 'package:cotiz/src/themes/themes.dart';
import 'package:cotiz/src/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';

class FriendPage extends StatefulWidget {
  const FriendPage({super.key});

  @override
  State<FriendPage> createState() => _FriendPageState();
}

class _FriendPageState extends State<FriendPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColorFond,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(4.w),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      padding: EdgeInsets.all(4.w),
                      decoration: BoxDecoration(
                        color: appWhite,
                        borderRadius: BorderRadius.circular(3.w),
                      ),
                      child: Icon(Icons.arrow_back_outlined),
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.all(4.w),
                      decoration: BoxDecoration(
                        color: appWhite,
                        borderRadius: BorderRadius.circular(3.w),
                      ),
                      child: Icon(
                        Icons.info_outline,
                        color: appBlack,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(4.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/refer.png",
                    height: 80.w,
                    width: 80.w,
                  ),
                  Text(
                    "Obtenir 500 Fcfa",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: appBlack,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Crédité sur votre compte",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: appBlack,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Gap(1.5.h),
                  Text(
                    "Partagez votre code d'invitation avec vos amis ou votre "
                    "famille par texto, email ou médias sociaux dès aujourd'hui !",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: appGrey,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Gap(2.h),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 14.w,
                    padding: EdgeInsets.all(3.w),
                    decoration: BoxDecoration(
                      color: appWhite,
                      borderRadius: BorderRadius.circular(10.w),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Z23DSU",
                          style: TextStyle(
                            color: appBlack,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.sp,
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Icon(
                            Icons.content_copy_outlined,
                            color: appBlack,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Gap(2.h),
                  SubmitButtonIcon(
                    AppConstants.btnShareFriend,
                    textcouleur: appBlack,
                    fontSize: 16.sp,
                    icone: "assets/svg/share.svg",
                    colorIcon: appBlack,
                    onPressed: () async {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
