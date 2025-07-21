import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';

import '../../../themes/themes.dart';
import '../../../widgets/widgets.dart';
import '../mobiles.dart';

class MobileBenefPage extends StatefulWidget {
  const MobileBenefPage({super.key});

  @override
  State<MobileBenefPage> createState() => _MobileBenefPageState();
}

class _MobileBenefPageState extends State<MobileBenefPage> {
  var number = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Bénéficiaire",
                    style: TextStyle(
                      color: appBlack,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.sp,
                    ),
                  ),
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
              Gap(2.h),
              InputText(
                hintText: "Nom ou Numéro de téléphone",
                keyboardType: TextInputType.text,
                controller: number,
                prefixIcon: Icon(
                  Icons.search_outlined,
                  color: appBlack,
                ),
                validatorMessage: "Veuillez saisir numéro ou nom",
              ),
              Gap(2.h),
              Container(
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
                  onTap: () {},
                  leading: Container(
                    padding: EdgeInsets.all(2.w),
                    height: 5.h,
                    width: 5.h,
                    decoration: BoxDecoration(
                      color: appColorFond,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.numbers_outlined,
                      color: appColorSecond,
                    ),
                  ),
                  title: Text(
                    "Saisir numéro de téléphone",
                    style: TextStyle(
                      color: appColorSecond,
                      fontWeight: FontWeight.bold,
                      fontSize: 15.sp,
                    ),
                  ),
                  subtitle: Text(
                    "Si le numéro ne se trouve pas dans vos contacts",
                    style: TextStyle(
                      color: appGrey,
                      fontWeight: FontWeight.normal,
                      fontSize: 12.sp,
                    ),
                  ),
                  trailing: Icon(
                    Icons.navigate_next_outlined,
                    color: appBlack,
                  ),
                ),
              ),
              Container(
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
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MobilePage(
                          type: 'Transférer',
                        ),
                      ),
                    );
                  },
                  leading: Container(
                    padding: EdgeInsets.all(2.w),
                    height: 5.h,
                    width: 5.h,
                    decoration: BoxDecoration(
                      color: appColorFond,
                      shape: BoxShape.circle,
                    ),
                    child: FlutterLogo(),
                  ),
                  title: Text(
                    "A Moi",
                    style: TextStyle(
                      color: appBlack,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    "05 85 83 16 47",
                    style: TextStyle(
                      color: appGrey,
                      fontSize: 13.sp,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  trailing: Icon(
                    Icons.navigate_next_outlined,
                    color: appBlack,
                  ),
                ),
              ),
              Gap(2.h),
              Text("Mes contacts"),
              Expanded(
                child: ListView(
                  children: [
                    Container(
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
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MobilePage(
                                type: 'Transférer',
                              ),
                            ),
                          );
                        },
                        leading: Container(
                          padding: EdgeInsets.all(2.w),
                          height: 5.h,
                          width: 5.h,
                          decoration: BoxDecoration(
                            color: appColorFond,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.person_pin,
                          ),
                        ),
                        title: Text(
                          "Son nom",
                          style: TextStyle(
                            color: appBlack,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text(
                          "Numéro de téléphone",
                          style: TextStyle(
                            color: appGrey,
                            fontSize: 13.sp,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        trailing: Icon(
                          Icons.navigate_next_outlined,
                          color: appBlack,
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
