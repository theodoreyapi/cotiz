import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';

import '../../../../constants/constants.dart';
import '../../../themes/themes.dart';
import '../../../widgets/widgets.dart';
import '../../mobiles/mobiles.dart';
import '../homes.dart';

class DetailHomePage extends StatefulWidget {
  const DetailHomePage({super.key});

  @override
  State<DetailHomePage> createState() => _DetailHomePageState();
}

class _DetailHomePageState extends State<DetailHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appWhite,
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
                Card(
                  surfaceTintColor: appWhite,
                  color: appWhite,
                  child: Padding(
                    padding: EdgeInsets.all(2.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "15 000 000 XOF",
                          style: TextStyle(
                            color: appBlack,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
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
                                      builder: (context) => MobilePage(type: 'Participer'),
                                    ),
                                  );
                                },
                              ),
                            ),
                            Expanded(
                              child: SubmitButton(
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
                        Container(
                          padding: EdgeInsets.all(2.w),
                          decoration: BoxDecoration(
                            color: appColor.withValues(alpha: .05),
                            borderRadius: BorderRadius.circular(3.w),
                          ),
                          child: IntrinsicHeight(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.person_outline_outlined,
                                      color: appBlack,
                                    ),
                                    Text(
                                      "20",
                                      style: TextStyle(
                                        color: appBlack,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "Personne(s)",
                                      style: TextStyle(
                                        color: appBlack,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 13.sp,
                                      ),
                                    ),
                                  ],
                                ),
                                VerticalDivider(
                                  color: Colors.grey,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.person_outline_outlined,
                                      color: appBlack,
                                    ),
                                    Text(
                                      "10",
                                      style: TextStyle(
                                        color: appBlack,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "Participant(s)",
                                      style: TextStyle(
                                        color: appBlack,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 13.sp,
                                      ),
                                    ),
                                  ],
                                ),
                                VerticalDivider(
                                  color: Colors.grey,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.calendar_today_outlined,
                                      color: appBlack,
                                    ),
                                    Text(
                                      "2",
                                      style: TextStyle(
                                        color: appBlack,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "Jours restants",
                                      style: TextStyle(
                                        color: appBlack,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 13.sp,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Gap(2.h),
                Text("Date"),
                SizedBox(
                  width: double.infinity,
                  child: Card(
                    surfaceTintColor: appWhite,
                    color: appWhite,
                    child: Padding(
                      padding: EdgeInsets.all(4.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Echéance",
                            style: TextStyle(
                              color: appBlack,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
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
                                  text: " 31/01/2025",
                                  style: TextStyle(
                                    color: appBlack,
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.normal,
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
                TabBar(
                  dividerColor: Colors.transparent,
                  tabs: <Widget>[
                    Tab(
                      text: 'Participant',
                    ),
                    Tab(
                      text: 'Transfert',
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
    );
  }
}
