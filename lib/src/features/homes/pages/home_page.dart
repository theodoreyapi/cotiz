import 'package:cotiz/src/features/cagnotte/cagnotte.dart';
import 'package:cotiz/src/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';

import '../../../../constants/constants.dart';
import '../../../widgets/widgets.dart';
import '../../coffre/coffre.dart';
import '../../prets/prets.dart';
import '../homes.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appWhite,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(4.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      appColor, // Bleu vif
                      appColorSecond, // Bleu clair
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(3.w),
                ),
                child: Padding(
                  padding: EdgeInsets.all(2.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 2.w),
                        child: Text(
                          "Solde disponible",
                          style: TextStyle(
                            color: appWhite,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      TextButton.icon(
                        onPressed: () {},
                        icon: Icon(
                          Icons.remove_red_eye_outlined,
                          color: appWhite,
                        ),
                        label: Text(
                          "15 000 000 XOF",
                          style: TextStyle(
                            color: appWhite,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Gap(2.h),
                      Row(
                        children: [
                          Expanded(
                            child: SubmitButtonIcon(
                              AppConstants.btnSend,
                              colorIcon: appWhite,
                              couleur: appColor.withValues(alpha: .5),
                              icone: "assets/svg/transfert.svg",
                              onPressed: () async {},
                            ),
                          ),
                          Expanded(
                            child: CancelButtonIcon(
                              AppConstants.btnReceive,
                              icone: "assets/svg/pp.svg",
                              onPressed: () async {},
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Gap(2.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CagnottePage(),
                          ),
                        );
                      },
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(3.w),
                            decoration: BoxDecoration(
                              color: appColorFond,
                              borderRadius: BorderRadius.circular(3.w),
                            ),
                            child: SvgPicture.asset(
                              "assets/svg/finance.svg",
                              height: 6.h,
                              width: 6.h,
                            ),
                          ),
                          Gap(1.h),
                          Text(
                            "Cagnotte\n",
                            style:
                                TextStyle(color: appColorText, fontSize: 15.sp),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PretPage(),
                          ),
                        );
                      },
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(3.w),
                            decoration: BoxDecoration(
                              color: appColorFond,
                              borderRadius: BorderRadius.circular(3.w),
                            ),
                            child: SvgPicture.asset(
                              "assets/svg/pp.svg",
                              height: 6.h,
                              width: 6.h,
                            ),
                          ),
                          Gap(1.h),
                          Text(
                            "Prêts P2P\n",
                            style:
                                TextStyle(color: appColorText, fontSize: 15.sp),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CoffrePage(),
                          ),
                        );
                      },
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(3.w),
                            decoration: BoxDecoration(
                              color: appColorFond,
                              borderRadius: BorderRadius.circular(3.w),
                            ),
                            child: SvgPicture.asset(
                              "assets/svg/coffre.svg",
                              height: 6.h,
                              width: 6.h,
                            ),
                          ),
                          Gap(1.h),
                          Text(
                            "Coffre-fort\n",
                            style:
                                TextStyle(color: appColorText, fontSize: 15.sp),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Gap(2.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Transactions",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      "Voir tout",
                      style: TextStyle(
                          fontWeight: FontWeight.normal, color: appColor),
                    ),
                  ),
                ],
              ),
              ListTile(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 8.0, vertical: 0.0),
                minVerticalPadding: 0.0,
                horizontalTitleGap: 8.0,
                leading: SvgPicture.asset("assets/svg/depot.svg"),
                title: Text("Dépôt"),
                subtitle: Text("26 Juin 2025"),
                trailing: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "+150 000 FCFA",
                      style: TextStyle(color: Colors.green),
                    ),
                    Text(
                      "Succès",
                      style: TextStyle(color: Colors.green),
                    ),
                  ],
                ),
              ),
              ListTile(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 8.0, vertical: 0.0),
                minVerticalPadding: 0.0,
                horizontalTitleGap: 8.0,
                leading: SvgPicture.asset("assets/svg/retrait.svg"),
                title: Text("Retrait"),
                subtitle: Text("28 Juin 2025"),
                trailing: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "-10 000 FCFA",
                      style: TextStyle(color: Colors.red),
                    ),
                    Text(
                      "Echec",
                      style: TextStyle(color: Colors.red),
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
