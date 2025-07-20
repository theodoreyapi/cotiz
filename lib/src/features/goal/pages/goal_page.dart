import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';

import '../../../../constants/constants.dart';
import '../../../themes/themes.dart';
import '../../../widgets/widgets.dart';
import '../goal.dart';

class GoalPage extends StatefulWidget {
  const GoalPage({super.key});

  @override
  State<GoalPage> createState() => _GoalPageState();
}

class _GoalPageState extends State<GoalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColorFond,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(4.w),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("assets/images/wallet.png", height: 10.h),
                Gap(2.h),
                TextButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    Icons.remove_red_eye_outlined,
                    color: appGrey,
                  ),
                  label: Text(
                    "15 000 000 XOF",
                    style: TextStyle(
                      color: appBlack,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 2.w),
                  child: Text(
                    "Montant total épargné",
                    style: TextStyle(
                      color: appBlack,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                Gap(2.h),
                SizedBox(
                  width: 50.w,
                  child: SubmitButtonIcon(
                    AppConstants.btnGoal,
                    fontSize: 16.sp,
                    icone: "assets/svg/add.svg",
                    colorIcon: appWhite,
                    couleur: appBlack,
                    textcouleur: appWhite,
                    onPressed: () async {},
                  ),
                ),
                Gap(2.h),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Mon épargne",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17.sp,
                    ),
                  ),
                ),
                Gap(1.h),
                ListView(
                  shrinkWrap: true,
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
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailsGoalPage(),
                            ),
                          );
                        },
                        leading: Container(
                          padding: EdgeInsets.all(3.w),
                          decoration: BoxDecoration(
                            color: Colors.green.withValues(alpha: .3),
                            borderRadius: BorderRadius.circular(3.w),
                          ),
                          child: Icon(
                            Icons.arrow_downward_outlined,
                            color: Colors.green,
                          ),
                        ),
                        title: Text(
                          "École des enfants",
                          style: TextStyle(
                            color: appBlack,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Row(
                          children: [
                            Text(
                              "25 000",
                              style: TextStyle(
                                color: appBlack,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              " sur 100 000 Fcfa",
                              style: TextStyle(
                                color: appGrey,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                        trailing: Stack(
                          alignment: Alignment.center,
                          children: [
                            SizedBox(
                              width: 40,
                              height: 40,
                              child: CircularProgressIndicator(
                                value: 0.5,
                                strokeWidth: 2,
                              ),
                            ),
                            CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.green.withValues(alpha: .3),
                              child: Text(
                                "60%",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14.sp,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Gap(1.h),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
