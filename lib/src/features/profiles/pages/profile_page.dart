import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

import '../../../themes/themes.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appWhite,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(4.w),
          child: Column(
            children: [
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
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      SizedBox(
                        height: 9.h,
                        width: 9.h,
                        child: SfRadialGauge(
                          axes: <RadialAxis>[
                            RadialAxis(
                              minimum: 0,
                              maximum: 100,
                              showLabels: false,
                              showTicks: false,
                              axisLineStyle: AxisLineStyle(
                                thickness: 0.1,
                                cornerStyle: CornerStyle.bothCurve,
                                color: appColor.withValues(alpha: .12),
                                thicknessUnit: GaugeSizeUnit.factor,
                              ),
                              pointers: <GaugePointer>[
                                RangePointer(
                                  value: 50,
                                  cornerStyle: CornerStyle.bothCurve,
                                  width: 0.1,
                                  sizeUnit: GaugeSizeUnit.factor,
                                  color: appColor,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: ClipOval(
                          child: Image.network(
                            "https://img.freepik.com/psd-gratuit/illustration-3d-personne-lunettes-soleil_23-2149436188.jpg?semt=ais_hybrid",
                            height: 7.h,
                            width: 7.h,
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) {
                              return Icon(Icons.image_not_supported);
                            },
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        child: Container(
                          padding: EdgeInsets.all(.5.w),
                          decoration: BoxDecoration(
                            color: appWhite,
                            borderRadius: BorderRadius.circular(1.w),
                          ),
                          child: Text(
                            "50%",
                            style: TextStyle(
                              color: appBlack,
                              fontWeight: FontWeight.bold,
                              fontSize: 13.sp,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Gap(2.w),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Yapi n'guessan kouassi théodore",
                          style: TextStyle(
                            color: appBlack,
                            fontWeight: FontWeight.bold,
                            fontSize: 14.sp,
                          ),
                        ),
                        Text(
                          "+2250585831647",
                          style: TextStyle(
                            color: appBlack,
                            fontWeight: FontWeight.normal,
                            fontSize: 13.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Gap(2.w),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.remove_red_eye_outlined,
                      color: appColor,
                      size: 18.sp,
                    ),
                  ),
                ],
              ),
              Divider(),
              Gap(2.h),
              Expanded(
                child: ListView(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: appColor.withValues(alpha: .12),
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(3.w),
                      ),
                      child: ListTile(
                        onTap: () {},
                        title: Text(
                          "Modifier mot de passe",
                          style: TextStyle(
                            color: appBlack,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        leading: Icon(
                          Icons.password_outlined,
                          color: appColor,
                        ),
                        trailing: Icon(
                          Icons.navigate_next_outlined,
                          color: appColor,
                          size: 14.sp,
                        ),
                      ),
                    ),
                    Gap(1.h),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: appColor.withValues(alpha: .12),
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(3.w),
                      ),
                      child: ListTile(
                        onTap: () {},
                        title: Text(
                          "Face ID",
                          style: TextStyle(
                            color: appBlack,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        leading: Icon(
                          Icons.face_outlined,
                          color: appColor,
                        ),
                        trailing: Icon(
                          Icons.navigate_next_outlined,
                          color: appColor,
                          size: 14.sp,
                        ),
                      ),
                    ),
                    Gap(1.h),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: appColor.withValues(alpha: .12),
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(3.w),
                      ),
                      child: ListTile(
                        onTap: () {},
                        title: Text(
                          "Emprunte",
                          style: TextStyle(
                            color: appBlack,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        leading: Icon(
                          Icons.fingerprint_outlined,
                          color: appColor,
                        ),
                        trailing: Icon(
                          Icons.navigate_next_outlined,
                          color: appColor,
                          size: 14.sp,
                        ),
                      ),
                    ),
                    Gap(1.h),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: appColor.withValues(alpha: .12),
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(3.w),
                      ),
                      child: ListTile(
                        onTap: () {},
                        title: Text(
                          "Confidentialités & Frais",
                          style: TextStyle(
                            color: appBlack,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        leading: Icon(
                          Icons.security_outlined,
                          color: appColor,
                        ),
                        trailing: Icon(
                          Icons.navigate_next_outlined,
                          color: appColor,
                          size: 14.sp,
                        ),
                      ),
                    ),
                    Gap(1.h),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: appColor.withValues(alpha: .12),
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(3.w),
                      ),
                      child: ListTile(
                        onTap: () {},
                        title: Text(
                          "Termes & Conditions",
                          style: TextStyle(
                            color: appBlack,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        leading: Icon(
                          Icons.privacy_tip_outlined,
                          color: appColor,
                        ),
                        trailing: Icon(
                          Icons.navigate_next_outlined,
                          color: appColor,
                          size: 14.sp,
                        ),
                      ),
                    ),
                    Gap(1.h),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: appColor.withValues(alpha: .12),
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(3.w),
                      ),
                      child: ListTile(
                        onTap: () {},
                        title: Text(
                          "Partager l'application",
                          style: TextStyle(
                            color: appBlack,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        leading: Icon(
                          Icons.share,
                          color: appColor,
                        ),
                        trailing: Icon(
                          Icons.navigate_next_outlined,
                          color: appColor,
                          size: 14.sp,
                        ),
                      ),
                    ),
                    Gap(1.h),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: appColor.withValues(alpha: .12),
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(3.w),
                      ),
                      child: ListTile(
                        onTap: () {},
                        title: Text(
                          "Se déconnecter",
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        leading: Icon(
                          Icons.logout,
                          color: Colors.red,
                        ),
                        trailing: Icon(
                          Icons.navigate_next_outlined,
                          color: Colors.red,
                          size: 14.sp,
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
