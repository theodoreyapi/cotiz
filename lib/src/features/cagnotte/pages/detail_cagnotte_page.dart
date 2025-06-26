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
      backgroundColor: appWhite,
      appBar: AppBar(
        title: Text("Détails cagnotte"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => QrCodePage(),
                ),
              );
            },
            icon: Icon(
              Icons.qr_code_2_outlined,
              color: appBlack,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeSettingPage(),
                ),
              );
            },
            icon: Icon(
              Icons.settings_outlined,
              color: appBlack,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(4.w),
          child: DefaultTabController(
            length: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(3.w),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3.w),
                    color: appColor.withValues(alpha: .2),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                    ],
                  ),
                ),
                Gap(2.h),
                Text(
                  "Anniversaire de ketura",
                  style: TextStyle(
                    color: appBlack,
                    fontSize: 17.sp,
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
                      SizedBox(
                        width: double.infinity,
                        child: Card(
                          surfaceTintColor: appWhite,
                          color: appWhite,
                          child: InkWell(
                            onTap: () {},
                            child: Padding(
                              padding: EdgeInsets.all(2.w),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ListTile(
                                    leading: ClipOval(
                                      child: Image.asset(
                                        "assets/images/moov.png",
                                        height: 4.h,
                                      ),
                                    ),
                                    title: Text(
                                      "Théodore Yapi",
                                      style: TextStyle(
                                        color: appBlack,
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    subtitle: Text(
                                      "Moov",
                                      style: TextStyle(
                                        color: appColor,
                                        fontSize: 13.sp,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    trailing: Text(
                                      "15 000 FCFA",
                                      style: TextStyle(
                                        color: appColor,
                                        fontSize: 13.sp,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Card(
                          surfaceTintColor: appWhite,
                          color: appWhite,
                          child: InkWell(
                            onTap: () {},
                            child: Padding(
                              padding: EdgeInsets.all(2.w),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ListTile(
                                    leading: ClipOval(
                                      child: Image.asset(
                                        "assets/images/moov.png",
                                        height: 4.h,
                                      ),
                                    ),
                                    title: Text(
                                      "Théodore Yapi",
                                      style: TextStyle(
                                        color: appBlack,
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    subtitle: Text(
                                      "Pour réserver salle",
                                      style: TextStyle(
                                        color: appColor,
                                        fontSize: 13.sp,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    trailing: Text(
                                      "15 000 FCFA",
                                      style: TextStyle(
                                        color: appColor,
                                        fontSize: 13.sp,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
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
