import 'package:cotiz/src/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';

import '../../../../constants/constants.dart';
import '../../../widgets/widgets.dart';

class DetailsGoalPage extends StatefulWidget {
  const DetailsGoalPage({super.key});

  @override
  State<DetailsGoalPage> createState() => _DetailsGoalPageState();
}

class _DetailsGoalPageState extends State<DetailsGoalPage> {
  final double savedAmount = 3000000;
  final double targetAmount = 5000000;

  @override
  Widget build(BuildContext context) {
    double percentage = (savedAmount / targetAmount) * 100;

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
                children: [
                  Text(
                    "Détails",
                    style: TextStyle(
                      color: appBlack,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.sp,
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.all(4.w),
                      decoration: BoxDecoration(
                        color: appWhite,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(Icons.person_add_alt_1_outlined),
                    ),
                  ),
                  Gap(2.w),
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
              Gap(1.h),
              Container(
                padding: EdgeInsets.all(3.w),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: appWhite,
                  borderRadius: BorderRadius.circular(3.w),
                ),
                child: Text(
                  "Ecole pour les enfants".toUpperCase(),
                  style: TextStyle(
                    color: appBlack,
                    fontSize: 15.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Gap(1.h),
              Container(
                decoration: BoxDecoration(
                  color: appWhite,
                  borderRadius: BorderRadius.circular(3.w),
                ),
                child: Padding(
                  padding: EdgeInsets.all(3.w),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.home, color: Colors.orange),
                          SizedBox(width: 8),
                          Text(
                            'École',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          Icon(Icons.more_vert),
                        ],
                      ),
                      Gap(2.h),
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          SizedBox(
                            width: 220,
                            height: 220,
                            child: CircularProgressIndicator(
                              value: 0.6,
                              strokeWidth: 8,
                            ),
                          ),
                          CircleAvatar(
                            radius: 103,
                            backgroundColor: Colors.green.withValues(alpha: .3),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  '${savedAmount.toInt()} Fcfa \néconomisés',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    color: appBlack,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  '${percentage.toStringAsFixed(0)}%',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 23.sp,
                                    fontWeight: FontWeight.bold,
                                    color: appBlack,
                                  ),
                                ),
                                Text(
                                  'Objectif • \n${targetAmount.toInt()} Fcfa',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    color: appGrey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "15 Apr",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "Début",
                                  style: TextStyle(
                                    color: appGrey,
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "15 May",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "Fin",
                                  style: TextStyle(
                                    color: appGrey,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Gap(1.h),
              Row(
                children: [
                  Expanded(
                    child: SubmitButton(
                      "Cotiser",
                      fontSize: 16.sp,
                      onPressed: () async {},
                    ),
                  ),
                  Gap(1.w),
                  Expanded(
                    child: SubmitButton(
                      "Encaisser",
                      fontSize: 16.sp,
                      couleur: appBlack,
                      textcouleur: appWhite,
                      onPressed: () async {},
                    ),
                  ),
                ],
              ),
              Gap(2.h),
              Text(
                "Activités",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17.sp,
                ),
              ),
              Expanded(
                child: ListView(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 1.h),
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
                        leading: Container(
                          padding: EdgeInsets.all(3.w),
                          decoration: BoxDecoration(
                            color: appColorFond,
                            borderRadius: BorderRadius.circular(3.w),
                          ),
                          child: Icon(
                            Icons.savings_outlined,
                            color: appBlack,
                          ),
                        ),
                        title: Text(
                          "Cotiser",
                          style: TextStyle(
                            color: appBlack,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text(
                          "19 juil, 2025",
                          style: TextStyle(
                            color: appGrey,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        trailing: Text(
                          "+25 000 Fcfa",
                          style: TextStyle(
                            color: appBlack,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 1.h),
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
                        leading: Container(
                          padding: EdgeInsets.all(3.w),
                          decoration: BoxDecoration(
                            color: appColorFond,
                            borderRadius: BorderRadius.circular(3.w),
                          ),
                          child: Icon(
                            Icons.point_of_sale_outlined,
                            color: appBlack,
                          ),
                        ),
                        title: Text(
                          "Encaisser",
                          style: TextStyle(
                            color: appBlack,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text(
                          "19 juil, 2025",
                          style: TextStyle(
                            color: appGrey,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        trailing: Text(
                          "-25 000 Fcfa",
                          style: TextStyle(
                            color: appBlack,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold,
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
