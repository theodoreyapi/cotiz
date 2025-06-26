import 'package:cotiz/src/features/cagnotte/cagnotte.dart';
import 'package:cotiz/src/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';

import '../../../../constants/constants.dart';
import '../../../widgets/widgets.dart';
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
                  borderRadius: BorderRadius.circular(16),
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
                  InkWell(
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
                          ),
                        ),
                        Gap(1.h),
                        Text(
                          "Cagnotte\n",
                          style:
                              TextStyle(color: appColorText, fontSize: 13.sp),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
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
                          ),
                        ),
                        Gap(1.h),
                        Text(
                          "Prêts P2P\n",
                          style:
                              TextStyle(color: appColorText, fontSize: 13.sp),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(3.w),
                          decoration: BoxDecoration(
                            color: appColorFond,
                            borderRadius: BorderRadius.circular(3.w),
                          ),
                          child: SvgPicture.asset(
                            "assets/svg/mobile.svg",
                          ),
                        ),
                        Gap(1.h),
                        Text(
                          "Service \nMobile",
                          style:
                              TextStyle(color: appColorText, fontSize: 13.sp),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {},
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
                          ),
                        ),
                        Gap(1.h),
                        Text(
                          "Coffre-fort\n",
                          style:
                              TextStyle(color: appColorText, fontSize: 13.sp),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(3.w),
                          decoration: BoxDecoration(
                            color: appColorFond,
                            borderRadius: BorderRadius.circular(3.w),
                          ),
                          child: SvgPicture.asset(
                            "assets/svg/cagnotte.svg",
                          ),
                        ),
                        Gap(1.h),
                        Text(
                          "Financement\n",
                          style:
                              TextStyle(color: appColorText, fontSize: 13.sp),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
