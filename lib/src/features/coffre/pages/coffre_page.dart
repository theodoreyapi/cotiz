import 'package:cotiz/src/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';

import '../../../../constants/constants.dart';
import '../../../widgets/widgets.dart';

class CoffrePage extends StatefulWidget {
  const CoffrePage({super.key});

  @override
  State<CoffrePage> createState() => _CoffrePageState();
}

class _CoffrePageState extends State<CoffrePage> {
  var periode = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appWhite,
      appBar: AppBar(
        title: Text("Mon Coffre-fort"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(3.w),
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
                      "Solde total du coffre",
                      style: TextStyle(
                        color: appBlack,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Text(
                      "140 000 FCFA",
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
                          child: SubmitButtonIcon(
                            AppConstants.btnCashIn,
                            colorIcon: appWhite,
                            couleur: Colors.green,
                            icone: "assets/svg/add-round.svg",
                            onPressed: () async {},
                          ),
                        ),
                        Expanded(
                          child: CancelButtonIcon(
                            AppConstants.btnCashOut,
                            icone: "assets/svg/minus-round.svg",
                            onPressed: () async {},
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Gap(2.h),
              Text("Période d'épargne"),
              InputText(
                hintText: "01 Jan 2025 - 31 Dec 2025",
                colorFille: appWhite,
                keyboardType: TextInputType.number,
                controller: periode,
                suffixIcon: Icon(Icons.calendar_month_outlined),
              ),
              Gap(2.h),
              Text("Transactions"),
              ListTile(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 8.0, vertical: 0.0),
                minVerticalPadding: 0.0,
                horizontalTitleGap: 8.0,
                leading: SvgPicture.asset("assets/svg/depot.svg"),
                title: Text("Dépôt"),
                subtitle: Text("26 Juin 2025"),
                trailing: Text(
                  "+150 000 FCFA",
                  style: TextStyle(color: Colors.green),
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
                trailing: Text(
                  "-10 000 FCFA",
                  style: TextStyle(color: Colors.red),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
