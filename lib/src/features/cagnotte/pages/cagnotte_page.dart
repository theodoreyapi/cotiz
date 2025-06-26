import 'package:cotiz/src/features/cagnotte/cagnotte.dart';
import 'package:cotiz/src/features/homes/homes.dart';
import 'package:cotiz/src/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';

import '../../../../constants/constants.dart';
import '../../../widgets/widgets.dart';

class CagnottePage extends StatefulWidget {
  const CagnottePage({super.key});

  @override
  State<CagnottePage> createState() => _CagnottePageState();
}

class _CagnottePageState extends State<CagnottePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appWhite,
      appBar: AppBar(
        title: Text("Cagnotte"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(3.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Créez ou réjoindre une cagnotte"),
              Gap(1.h),
              SubmitButtonIcon(
                AppConstants.btnCreateCagnotte,
                colorIcon: appWhite,
                icone: "assets/svg/add.svg",
                onPressed: () async {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CreateCagnottePage(),
                    ),
                  );
                },
              ),
              Gap(1.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: appColorFond,
                      borderRadius: BorderRadius.circular(3.w),
                    ),
                    child: TextButton.icon(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => QrScannePage(),
                          ),
                        );
                      },
                      label: Text("Scanner QR Code"),
                      icon: Icon(
                        Icons.qr_code_scanner_outlined,
                        color: appColor,
                      ),
                    ),
                  ),
                  Gap(2.w),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: appColorFond,
                        borderRadius: BorderRadius.circular(3.w),
                      ),
                      child: TextButton.icon(
                        onPressed: () {},
                        label: Text("Entrer un code"),
                        icon: Icon(
                          Icons.key_outlined,
                          color: appColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Gap(1.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Mes cagnottes"),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Voir plus",
                      style: TextStyle(color: appColor, fontSize: 14.sp),
                    ),
                  ),
                ],
              ),
              Card(
                surfaceTintColor: appWhite,
                color: appWhite,
                child: ListTile(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 8.0, vertical: 0.0),
                  dense: true,
                  minVerticalPadding: 0.0,
                  horizontalTitleGap: 8.0,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailCagnottePage(),
                      ),
                    );
                  },
                  leading: CircleAvatar(child: FlutterLogo()),
                  title: Text(
                    "Anniversaire de ...",
                    style: TextStyle(
                      color: appBlack,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Anniversaire",
                        style: TextStyle(
                          color: appColor,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      Text.rich(
                        TextSpan(
                          children: [
                            WidgetSpan(
                              child: Icon(
                                Icons.person_outline_outlined,
                                color: appBlack,
                                size: 18,
                              ),
                            ),
                            TextSpan(
                              text: " 20 Personne(s)",
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  trailing: Text(
                    "150 000 FCFA",
                    style: TextStyle(
                      color: appColor,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Gap(2.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Cagnottes publiques"),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Voir plus",
                      style: TextStyle(color: appColor, fontSize: 14.sp),
                    ),
                  ),
                ],
              ),
              Card(
                surfaceTintColor: appWhite,
                color: appWhite,
                child: ListTile(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 8.0, vertical: 0.0),
                  dense: true,
                  minVerticalPadding: 0.0,
                  horizontalTitleGap: 8.0,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailCagnottePage(),
                      ),
                    );
                  },
                  leading: CircleAvatar(child: FlutterLogo()),
                  title: Text(
                    "Anniversaire de ...",
                    style: TextStyle(
                      color: appBlack,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Anniversaire",
                        style: TextStyle(
                          color: appColor,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      Text.rich(
                        TextSpan(
                          children: [
                            WidgetSpan(
                              child: Icon(
                                Icons.person_outline_outlined,
                                color: appBlack,
                                size: 18,
                              ),
                            ),
                            TextSpan(
                              text: " 20 Personne(s)",
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  trailing: Text(
                    "150 000 FCFA",
                    style: TextStyle(
                      color: appColor,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
