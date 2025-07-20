import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';

import '../../../../constants/constants.dart';
import '../../../themes/themes.dart';
import '../../../widgets/widgets.dart';
import '../../mobiles/mobiles.dart';
import '../../homes/homes.dart';

class DetailCagnottePage extends StatefulWidget {
  const DetailCagnottePage({super.key});

  @override
  State<DetailCagnottePage> createState() => _DetailCagnottePageState();
}

class _DetailCagnottePageState extends State<DetailCagnottePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColorFond,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(4.w),
          child: DefaultTabController(
            length: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
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
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => QrCodePage(),
                          ),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.all(4.w),
                        decoration: BoxDecoration(
                          color: appWhite,
                          borderRadius: BorderRadius.circular(3.w),
                        ),
                        child: Icon(
                          Icons.qr_code_2_outlined,
                          color: appBlack,
                        ),
                      ),
                    ),
                    Gap(2.w),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomeSettingPage(),
                          ),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.all(4.w),
                        decoration: BoxDecoration(
                          color: appWhite,
                          borderRadius: BorderRadius.circular(3.w),
                        ),
                        child: Icon(
                          Icons.settings_outlined,
                          color: appBlack,
                        ),
                      ),
                    ),
                  ],
                ),
                Gap(2.h),
                Text(
                  "Montant collecté",
                  style: TextStyle(
                    color: appBlack,
                    fontSize: 15.sp,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                Text(
                  "15 000 000 FCFA",
                  style: TextStyle(
                    color: appBlack,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Objectif: 20 000 000 FCFA",
                  style: TextStyle(
                    color: appBlack,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                Gap(2.h),
                Row(
                  children: [
                    Expanded(
                      child: SubmitButton(
                        AppConstants.btnPart,
                        height: 10.w,
                        fontSize: 15.sp,
                        onPressed: () async {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  MobilePage(type: 'Participer'),
                            ),
                          );
                        },
                      ),
                    ),
                    Gap(1.w),
                    Expanded(
                      child: CancelButton(
                        AppConstants.btnTrans,
                        height: 10.w,
                        fontSize: 15.sp,
                        onPressed: () async {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MobileBenefPage(),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
                Gap(2.h),
                Text(
                  "Anniversaire de ketura",
                  style: TextStyle(
                    color: appBlack,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Une cagnotte pour célébrer les 30 ans de ketura",
                  style: TextStyle(
                    color: appBlack,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                Gap(2.h),
                Text.rich(
                  TextSpan(
                    children: [
                      WidgetSpan(
                        child: Icon(
                          Icons.calendar_today_outlined,
                          color: appBlack,
                          size: 15,
                        ),
                      ),
                      TextSpan(
                        text: " Date limite: 31 Janvier 2025",
                        style: TextStyle(
                          color: appBlack,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
                TextButton.icon(
                  onPressed: () {},
                  label: Text(
                    "25 Participants",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: appColor,
                    ),
                  ),
                  icon: Icon(Icons.groups_3_outlined, color: appColor),
                ),
                Gap(1.h),
                Text.rich(
                  TextSpan(
                    children: [
                      WidgetSpan(
                        child: Icon(
                          Icons.person,
                          color: appBlack,
                          size: 15,
                        ),
                      ),
                      TextSpan(
                        text: " Organisé par: Yapi",
                        style: TextStyle(
                          color: appBlack,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                TabBar(
                  dividerColor: Colors.transparent,
                  tabs: <Widget>[
                    Tab(
                      text: 'Entrées',
                    ),
                    Tab(
                      text: 'Sorties',
                    ),
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    children: <Widget>[
                      ListView.builder(
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return Container(
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
                                "Théodore Yapi",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15.sp,
                                  color: appBlack,
                                ),
                              ),
                              subtitle: Text(
                                "Moov",
                                style: TextStyle(
                                  color: appGrey,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              trailing: Text(
                                "15 000 Fcfa",
                                style: TextStyle(
                                  color: appBlack,
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                      ListView.builder(
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return Container(
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
                                "Théodore Yapi",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15.sp,
                                  color: appBlack,
                                ),
                              ),
                              subtitle: Text(
                                "Pour réserver salle",
                                style: TextStyle(
                                  color: appGrey,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              trailing: Text(
                                "15 000 Fcfa",
                                style: TextStyle(
                                  color: appBlack,
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(4.w),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SubmitButton(
              AppConstants.btnPerson,
              onPressed: () {},
            ),
            Gap(1.h),
            CancelButton(
              AppConstants.btnShare,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
