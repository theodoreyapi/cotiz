import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

import '../../../themes/themes.dart';
import '../profiles.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColorFond,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(4.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Paramètres",
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
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3.w),
                  color: appColorSecond,
                ),
                child: Padding(
                  padding: EdgeInsets.all(3.w),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Attention",
                              style: TextStyle(
                                color: appBlack,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.sp,
                              ),
                            ),
                            Text(
                              "Votre compte est plafonné, allez-y dans votre "
                              "compte pour ajouter votre pièce pour déplafonner",
                              style: TextStyle(
                                color: appBlack,
                                fontWeight: FontWeight.normal,
                                fontSize: 13.sp,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Icon(
                        Icons.warning_amber_outlined,
                        size: 50,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
              Gap(2.h),
              Expanded(
                child: ListView(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: appWhite,
                        borderRadius: BorderRadius.circular(3.w),
                      ),
                      child: ListTile(
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 0.0),
                        minVerticalPadding: 0.0,
                        horizontalTitleGap: 8.0,
                        onTap: () {},
                        title: Text(
                          "Informations personnelles",
                          style: TextStyle(
                            color: appBlack,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text(
                          "Voir vos informations",
                          style: TextStyle(
                            color: appGrey,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        leading: Container(
                          padding: EdgeInsets.all(3.w),
                          decoration: BoxDecoration(
                            color: appColorFond,
                            borderRadius: BorderRadius.circular(3.w),
                          ),
                          child: Icon(
                            Icons.person_outline,
                            color: appBlack,
                          ),
                        ),
                        trailing: Icon(
                          Icons.navigate_next_outlined,
                          color: appBlack,
                        ),
                      ),
                    ),
                    Gap(1.h),
                    Container(
                      decoration: BoxDecoration(
                        color: appWhite,
                        borderRadius: BorderRadius.circular(3.w),
                      ),
                      child: ListTile(
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 0.0),
                        minVerticalPadding: 0.0,
                        horizontalTitleGap: 8.0,
                        onTap: () {},
                        title: Text(
                          "Mot de passe",
                          style: TextStyle(
                            color: appBlack,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text(
                          "Modifier son mot de passe",
                          style: TextStyle(
                            color: appGrey,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        leading: Container(
                          padding: EdgeInsets.all(3.w),
                          decoration: BoxDecoration(
                            color: appColorFond,
                            borderRadius: BorderRadius.circular(3.w),
                          ),
                          child: Icon(
                            Icons.password_outlined,
                            color: appBlack,
                          ),
                        ),
                        trailing: Icon(
                          Icons.navigate_next_outlined,
                          color: appBlack,
                        ),
                      ),
                    ),
                    Gap(1.h),
                    Container(
                      decoration: BoxDecoration(
                        color: appWhite,
                        borderRadius: BorderRadius.circular(3.w),
                      ),
                      child: ListTile(
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 0.0),
                        minVerticalPadding: 0.0,
                        horizontalTitleGap: 8.0,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => NotificationSettingPage(),
                            ),
                          );
                        },
                        title: Text(
                          "Notification",
                          style: TextStyle(
                            color: appBlack,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text(
                          "Recevoir des alertes sur tous les comptes",
                          style: TextStyle(
                            color: appGrey,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        leading: Container(
                          padding: EdgeInsets.all(3.w),
                          decoration: BoxDecoration(
                            color: appColorFond,
                            borderRadius: BorderRadius.circular(3.w),
                          ),
                          child: Icon(
                            Icons.notifications_outlined,
                            color: appBlack,
                          ),
                        ),
                        trailing: Icon(
                          Icons.navigate_next_outlined,
                          color: appBlack,
                        ),
                      ),
                    ),
                    Gap(1.h),
                    Container(
                      decoration: BoxDecoration(
                        color: appWhite,
                        borderRadius: BorderRadius.circular(3.w),
                      ),
                      child: ListTile(
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 8.0,
                          vertical: 0.0,
                        ),
                        minVerticalPadding: 0.0,
                        horizontalTitleGap: 8.0,
                        onTap: () {},
                        title: Text(
                          "Confidentialités & Frais",
                          style: TextStyle(
                            color: appBlack,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text(
                          "Lire attentivement",
                          style: TextStyle(
                            color: appGrey,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        leading: Container(
                          padding: EdgeInsets.all(3.w),
                          decoration: BoxDecoration(
                            color: appColorFond,
                            borderRadius: BorderRadius.circular(3.w),
                          ),
                          child: Icon(
                            Icons.security_outlined,
                            color: appBlack,
                          ),
                        ),
                        trailing: Icon(
                          Icons.navigate_next_outlined,
                          color: appBlack,
                        ),
                      ),
                    ),
                    Gap(1.h),
                    Container(
                      decoration: BoxDecoration(
                        color: appWhite,
                        borderRadius: BorderRadius.circular(3.w),
                      ),
                      child: ListTile(
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 8.0,
                          vertical: 0.0,
                        ),
                        minVerticalPadding: 0.0,
                        horizontalTitleGap: 8.0,
                        onTap: () {},
                        title: Text(
                          "Termes & Conditions",
                          style: TextStyle(
                            color: appBlack,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text(
                          "Lire attentivement",
                          style: TextStyle(
                            color: appGrey,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        leading: Container(
                          padding: EdgeInsets.all(3.w),
                          decoration: BoxDecoration(
                            color: appColorFond,
                            borderRadius: BorderRadius.circular(3.w),
                          ),
                          child: Icon(
                            Icons.privacy_tip_outlined,
                            color: appBlack,
                          ),
                        ),
                        trailing: Icon(
                          Icons.navigate_next_outlined,
                          color: appBlack,
                        ),
                      ),
                    ),
                    Gap(1.h),
                    Container(
                      decoration: BoxDecoration(
                        color: appWhite,
                        borderRadius: BorderRadius.circular(3.w),
                      ),
                      child: ListTile(
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 8.0,
                          vertical: 0.0,
                        ),
                        minVerticalPadding: 0.0,
                        horizontalTitleGap: 8.0,
                        onTap: () {},
                        title: Text(
                          "Partager l'application",
                          style: TextStyle(
                            color: appBlack,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text(
                          "Reçois 100 Fcfa par partage",
                          style: TextStyle(
                            color: appGrey,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        leading: Container(
                          padding: EdgeInsets.all(3.w),
                          decoration: BoxDecoration(
                            color: appColorFond,
                            borderRadius: BorderRadius.circular(3.w),
                          ),
                          child: Icon(
                            Icons.share,
                            color: appBlack,
                          ),
                        ),
                        trailing: Icon(
                          Icons.navigate_next_outlined,
                          color: appBlack,
                        ),
                      ),
                    ),
                    Gap(1.h),
                    Container(
                      decoration: BoxDecoration(
                        color: appWhite,
                        borderRadius: BorderRadius.circular(3.w),
                      ),
                      child: ListTile(
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 8.0,
                          vertical: 0.0,
                        ),
                        minVerticalPadding: 0.0,
                        horizontalTitleGap: 8.0,
                        onTap: () {},
                        title: Text(
                          "Se déconnecter",
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        leading: Container(
                          padding: EdgeInsets.all(3.w),
                          decoration: BoxDecoration(
                            color: Colors.red.withValues(alpha: .12),
                            borderRadius: BorderRadius.circular(3.w),
                          ),
                          child: Icon(
                            Icons.logout,
                            color: Colors.red,
                          ),
                        ),
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
