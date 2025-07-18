import 'package:cotiz/src/features/cagnotte/cagnotte.dart';
import 'package:cotiz/src/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';

import '../../../../constants/constants.dart';
import '../../../widgets/widgets.dart';
import '../../coffre/coffre.dart';
import '../../friend/friend.dart';
import '../../prets/prets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColorFond,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(4.w),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 2.w),
                  child: Text(
                    "Solde disponible",
                    style: TextStyle(
                      color: appBlack,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
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
                Gap(2.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          padding: EdgeInsets.all(3.w),
                          decoration: BoxDecoration(
                            color: appWhite,
                            borderRadius: BorderRadius.circular(3.w),
                          ),
                          child: Column(
                            children: [
                              SvgPicture.asset(
                                "assets/svg/pp.svg",
                                colorFilter:
                                    ColorFilter.mode(appColor, BlendMode.srcIn),
                                height: 4.h,
                                width: 4.h,
                              ),
                              Gap(1.h),
                              Text(
                                "Recharger",
                                style: TextStyle(
                                    color: appColorText, fontSize: 15.sp),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Gap(2.w),
                    Expanded(
                      child: InkWell(
                        onTap: () => showLogoutDialog(context),
                        child: Container(
                          padding: EdgeInsets.all(3.w),
                          decoration: BoxDecoration(
                            color: appWhite,
                            borderRadius: BorderRadius.circular(3.w),
                          ),
                          child: Column(
                            children: [
                              SvgPicture.asset(
                                "assets/svg/coffre.svg",
                                colorFilter:
                                    ColorFilter.mode(appColor, BlendMode.srcIn),
                                height: 4.h,
                                width: 4.h,
                              ),
                              Gap(1.h),
                              Text(
                                "Services",
                                style: TextStyle(
                                    color: appColorText, fontSize: 15.sp),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Gap(2.w),
                    Expanded(
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          padding: EdgeInsets.all(3.w),
                          decoration: BoxDecoration(
                            color: appWhite,
                            borderRadius: BorderRadius.circular(3.w),
                          ),
                          child: Column(
                            children: [
                              SvgPicture.asset(
                                "assets/svg/transfert.svg",
                                colorFilter:
                                    ColorFilter.mode(appColor, BlendMode.srcIn),
                                height: 4.h,
                                width: 4.h,
                              ),
                              Gap(1.h),
                              Text(
                                "Transférer",
                                style: TextStyle(
                                    color: appColorText, fontSize: 15.sp),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Gap(2.h),
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.all(3.w),
                  decoration: BoxDecoration(
                    color: appWhite,
                    borderRadius: BorderRadius.circular(3.w),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Parrainez un ami,",
                                  style: TextStyle(
                                    color: appBlack,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "Recevez 500 Fcfa",
                                  style: TextStyle(
                                    color: appBlack,
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Gap(1.5.h),
                                Text(
                                  "Invitez un ami à Cova et vous recevrez tous les deux 500 Fcfa.",
                                  style: TextStyle(
                                    color: appGrey,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Image.asset(
                              "assets/images/refer.png",
                              height: 35.w,
                              width: 35.w,
                            ),
                          ),
                        ],
                      ),
                      SubmitButton(
                        AppConstants.btnRefer,
                        textcouleur: appBlack,
                        fontSize: 16.sp,
                        onPressed: () async {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => FriendPage(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
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
                          fontWeight: FontWeight.normal,
                          color: appBlack,
                        ),
                      ),
                    ),
                  ],
                ),
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
                        title: Text("Recharger"),
                        subtitle: Text(
                          "26 Juin 2025",
                          style: TextStyle(color: appGrey),
                        ),
                        trailing: Text(
                          "+150 000 FCFA",
                          style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Gap(1.h),
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
                        leading: Container(
                          padding: EdgeInsets.all(3.w),
                          decoration: BoxDecoration(
                            color: Colors.red.withValues(alpha: .3),
                            borderRadius: BorderRadius.circular(3.w),
                          ),
                          child: Icon(
                            Icons.arrow_upward_outlined,
                            color: Colors.red,
                          ),
                        ),
                        title: Text("Transfert"),
                        subtitle: Text(
                          "28 Juin 2025",
                          style: TextStyle(
                            color: appGrey,
                          ),
                        ),
                        trailing: Text(
                          "-10 000 FCFA",
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void showLogoutDialog(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: appWhite,
      builder: (_) => Padding(
        padding: EdgeInsets.all(4.w),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Services",
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 18.sp),
                  textAlign: TextAlign.start,
                ),
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: Icon(Icons.close),
                ),
              ],
            ),
            Gap(2.h),
            Container(
              decoration: BoxDecoration(
                color: appColorFond,
                borderRadius: BorderRadius.circular(3.w),
              ),
              child: ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CagnottePage(),
                      ),
                    );
                  },
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 8.0, vertical: 0.0),
                  minVerticalPadding: 0.0,
                  horizontalTitleGap: 8.0,
                  leading: Container(
                    padding: EdgeInsets.all(3.w),
                    decoration: BoxDecoration(
                      color: appWhite,
                      borderRadius: BorderRadius.circular(3.w),
                    ),
                    child: SvgPicture.asset(
                      "assets/svg/finance.svg",
                      colorFilter: ColorFilter.mode(appBlack, BlendMode.srcIn),
                      height: 2.5.h,
                      width: 3.h,
                    ),
                  ),
                  title: Text("Cagnotte"),
                  subtitle: Text(
                    "Créer et visualiser votre cagnotte",
                    style: TextStyle(color: appGrey),
                  ),
                  trailing: Icon(Icons.navigate_next_outlined)),
            ),
            Gap(1.h),
            Container(
              decoration: BoxDecoration(
                color: appColorFond,
                borderRadius: BorderRadius.circular(3.w),
              ),
              child: ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PretPage(),
                      ),
                    );
                  },
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 8.0, vertical: 0.0),
                  minVerticalPadding: 0.0,
                  horizontalTitleGap: 8.0,
                  leading: Container(
                    padding: EdgeInsets.all(3.w),
                    decoration: BoxDecoration(
                      color: appWhite,
                      borderRadius: BorderRadius.circular(3.w),
                    ),
                    child: SvgPicture.asset(
                      "assets/svg/pp.svg",
                      colorFilter: ColorFilter.mode(appBlack, BlendMode.srcIn),
                      height: 2.5.h,
                      width: 3.h,
                    ),
                  ),
                  title: Text("Prêts P2P"),
                  subtitle: Text(
                    "Prêts entre amis et plus loin",
                    style: TextStyle(color: appGrey),
                  ),
                  trailing: Icon(Icons.navigate_next_outlined)),
            ),
            Gap(1.h),
            Container(
              decoration: BoxDecoration(
                color: appColorFond,
                borderRadius: BorderRadius.circular(3.w),
              ),
              child: ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CoffrePage(),
                      ),
                    );
                  },
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 8.0, vertical: 0.0),
                  minVerticalPadding: 0.0,
                  horizontalTitleGap: 8.0,
                  leading: Container(
                    padding: EdgeInsets.all(3.w),
                    decoration: BoxDecoration(
                      color: appWhite,
                      borderRadius: BorderRadius.circular(3.w),
                    ),
                    child: SvgPicture.asset(
                      "assets/svg/coffre.svg",
                      colorFilter: ColorFilter.mode(appBlack, BlendMode.srcIn),
                      height: 2.5.h,
                      width: 3.h,
                    ),
                  ),
                  title: Text("Coffre-fort"),
                  subtitle: Text(
                    "Garder en stock vos fonds",
                    style: TextStyle(color: appGrey),
                  ),
                  trailing: Icon(Icons.navigate_next_outlined)),
            ),
            /* SizedBox(height: 2.h),
            Container(
              padding: EdgeInsets.all(2.w),
              decoration: BoxDecoration(
                color: Colors.orange.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(3.w),
              ),
              child: ListTile(
                leading: Icon(Icons.info_outline, color: Colors.orange),
                title: Text(
                  "Cette action vous empêchera d'accéder à toutes les informations sur l'application",
                  style: TextStyle(color: Colors.orange, fontSize: 14.sp),
                ),
              ),
            ),
            SizedBox(height: 2.h),
            Row(
              children: [
                Expanded(
                  child: CancelButton(
                    AppConstants.btnCancel,
                    height: 10.w,
                    fontSize: 15.sp,
                    textcouleur: appColor,
                    onPressed: () => Navigator.pop(context),
                  ),
                ),
                SizedBox(width: 2.w),
                Expanded(
                  child: SubmitButton(
                    AppConstants.btnLogout,
                    height: 10.w,
                    fontSize: 15.sp,
                    couleur: Colors.red,
                    onPressed: () async {
                      await SharedPreferencesHelper().clear();
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (_) => const LoginPage()),
                            (_) => false,
                      );
                    },
                  ),
                ),
              ],
            ),*/
          ],
        ),
      ),
    );
  }
}
