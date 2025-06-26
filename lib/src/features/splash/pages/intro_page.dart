import 'package:cotiz/src/features/auths/register/register.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';

import '../../../../constants/constants.dart';
import '../../../themes/themes.dart';
import '../../../widgets/widgets.dart';
import '../../auths/login/login.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appWhite,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(3.w),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppConstants.appName,
                  style: TextStyle(
                    color: appBlack,
                    fontWeight: FontWeight.bold,
                    fontSize: 25.sp,
                  ),
                ),
                Text(
                  "L'app qui connecte des personnes",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.normal,
                    fontSize: 16.sp,
                  ),
                ),
                Gap(2.h),
                Container(
                  decoration: BoxDecoration(
                    color: appColorFond,
                    borderRadius: BorderRadius.circular(3.w),
                  ),
                  child: ListTile(
                    leading: SvgPicture.asset("assets/svg/wallett.svg"),
                    title: Text(
                      "Gestion simplifiée",
                      style: TextStyle(
                        color: appColorText,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.sp,
                      ),
                    ),
                    subtitle: Text(
                      "Gérer votre argent facilement avec notre interface intuitive et simplifiée",
                      style: TextStyle(
                        color: appColorText,
                        fontWeight: FontWeight.normal,
                        fontSize: 14.sp,
                      ),
                    ),
                  ),
                ),
                Gap(2.h),
                Container(
                  decoration: BoxDecoration(
                    color: appColorFond,
                    borderRadius: BorderRadius.circular(3.w),
                  ),
                  child: ListTile(
                    leading: SvgPicture.asset("assets/svg/transaction.svg"),
                    title: Text(
                      "Transaction",
                      style: TextStyle(
                        color: appColorText,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.sp,
                      ),
                    ),
                    subtitle: Text(
                      "Envoyez et recevez de l'argent en temps réel",
                      style: TextStyle(
                        color: appColorText,
                        fontWeight: FontWeight.normal,
                        fontSize: 14.sp,
                      ),
                    ),
                  ),
                ),
                Gap(2.h),
                Container(
                  decoration: BoxDecoration(
                    color: appColorFond,
                    borderRadius: BorderRadius.circular(3.w),
                  ),
                  child: ListTile(
                    leading: SvgPicture.asset("assets/svg/pret.svg"),
                    title: Text(
                      "Prêt entre particuliers",
                      style: TextStyle(
                        color: appColorText,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.sp,
                      ),
                    ),
                    subtitle: Text(
                      "Empruntez ou prêtez de l'argent en toute sécurité",
                      style: TextStyle(
                        color: appColorText,
                        fontWeight: FontWeight.normal,
                        fontSize: 14.sp,
                      ),
                    ),
                  ),
                ),
                Gap(2.h),
                Container(
                  decoration: BoxDecoration(
                    color: appColorFond,
                    borderRadius: BorderRadius.circular(3.w),
                  ),
                  child: ListTile(
                    leading: SvgPicture.asset("assets/svg/pret.svg"),
                    title: Text(
                      "Cagnotte",
                      style: TextStyle(
                        color: appColorText,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.sp,
                      ),
                    ),
                    subtitle: Text(
                      "Commencez à collecter facilement",
                      style: TextStyle(
                        color: appColorText,
                        fontWeight: FontWeight.normal,
                        fontSize: 14.sp,
                      ),
                    ),
                  ),
                ),
                Gap(2.h),
                Container(
                  decoration: BoxDecoration(
                    color: appColorFond,
                    borderRadius: BorderRadius.circular(3.w),
                  ),
                  child: ListTile(
                    leading: SvgPicture.asset("assets/svg/projet.svg"),
                    title: Text(
                      "Financement de projets",
                      style: TextStyle(
                        color: appColorText,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.sp,
                      ),
                    ),
                    subtitle: Text(
                      "Participez au financement de projets innovants",
                      style: TextStyle(
                        color: appColorText,
                        fontWeight: FontWeight.normal,
                        fontSize: 14.sp,
                      ),
                    ),
                  ),
                ),
                Gap(2.h),
                Container(
                  padding: EdgeInsets.all(3.w),
                  decoration: BoxDecoration(
                    color: appColorFond,
                    borderRadius: BorderRadius.circular(3.w),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Sécurité garantie",
                        style: TextStyle(
                          color: appColorText,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.sp,
                        ),
                      ),
                      Gap(1.h),
                      BulletPoint(text: 'Authentification forte'),
                      BulletPoint(text: 'Transactions cryptées'),
                      BulletPoint(text: 'Protection des données'),
                      BulletPoint(text: 'Conformité RGPD'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(3.w),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: SubmitButton(
                AppConstants.btnRegister,
                fontSize: 15.sp,
                onPressed: () async {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RegisterPage(),
                    ),
                  );
                },
              ),
            ),
            Expanded(
              child: CancelButton(
                AppConstants.btnLogin,
                fontSize: 15.sp,
                onPressed: () async {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginPage(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BulletPoint extends StatelessWidget {
  final String text;

  const BulletPoint({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        children: [
          Icon(Icons.circle, size: 8, color: appColor),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(fontSize: 14, color: Colors.black54),
            ),
          ),
        ],
      ),
    );
  }
}
