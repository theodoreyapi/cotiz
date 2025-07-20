import 'package:cotiz/src/features/cagnotte/cagnotte.dart';
import 'package:cotiz/src/features/homes/homes.dart';
import 'package:cotiz/src/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
      backgroundColor: appColorFond,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(3.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Cagnotte",
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
                Text("Créez ou réjoindre une cagnotte"),
                Gap(1.h),
                SubmitButtonIcon(
                  AppConstants.btnCreateCagnotte,
                  colorIcon: appBlack,
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
                        color: appWhite,
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
                          color: appWhite,
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
                    Text(
                      "Mes cagnottes",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17.sp,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Voir plus",
                        style: TextStyle(color: appBlack, fontSize: 14.sp),
                      ),
                    ),
                  ],
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(bottom: 1.h),
                      decoration: BoxDecoration(
                        color: appWhite,
                        borderRadius: BorderRadius.circular(3.w),
                        boxShadow: [
                          BoxShadow(
                            color: appBlack.withValues(alpha: 0.05),
                            blurRadius: 6,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: ListTile(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailCagnottePage(),
                            ),
                          );
                        },
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 8.0,
                          vertical: 0.0,
                        ),
                        minVerticalPadding: 0.0,
                        horizontalTitleGap: 8.0,
                        leading: Container(
                          padding: EdgeInsets.all(3.w),
                          decoration: BoxDecoration(
                            color: appColorFond,
                            borderRadius: BorderRadius.circular(3.w),
                          ),
                          child: SvgPicture.asset(
                            "assets/svg/finance.svg",
                            colorFilter:
                                ColorFilter.mode(appBlack, BlendMode.srcIn),
                            height: 2.5.h,
                            width: 3.h,
                          ),
                        ),
                        title: Text(
                          "Anniversaire de Marie",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15.sp,
                            color: appBlack,
                          ),
                        ),
                        subtitle: Padding(
                          padding: EdgeInsets.only(top: 0.5.h),
                          child: Text.rich(
                            TextSpan(
                              children: [
                                WidgetSpan(
                                  child: Icon(
                                    Icons.person_outline_outlined,
                                    color: appGrey,
                                    size: 18,
                                  ),
                                ),
                                TextSpan(
                                  text: " 20 Personne(s)",
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    color: appGrey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        trailing: Text(
                          "150 000 FCFA",
                          style: TextStyle(
                            color: appBlack,
                            fontSize: 13.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    );
                  },
                ),
                Gap(2.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Cagnottes publiques",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17.sp,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Voir plus",
                        style: TextStyle(color: appBlack, fontSize: 14.sp),
                      ),
                    ),
                  ],
                ),
                GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 10,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 2.w,
                    mainAxisSpacing: 2.w,
                    childAspectRatio: 0.8,
                  ),
                  itemBuilder: (context, index) {
                    return InkWell(
                      borderRadius: BorderRadius.circular(4.w),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailCagnottePage(),
                          ),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 1.w, vertical: 1.w),
                        decoration: BoxDecoration(
                          color: appWhite,
                          borderRadius: BorderRadius.circular(3.w),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withValues(alpha: 0.05),
                              blurRadius: 8,
                              offset: Offset(0, 4),
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 15.h,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3.w),
                                color: Colors.grey[100],
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "https://cdn.prod.website-files.com/66f0597da174dc0405e61d4f/66fa76ee2ffcafcbe4b5b1e2_66ab9c4143d6cfad6ef26073_erreurs_cagnottes_en_ligne.jpeg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Gap(1.h),
                            Text(
                              "Brulure de Jeanne",
                              textAlign: TextAlign.start,
                              maxLines: 2,
                              style: TextStyle(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w600,
                                color: appBlack,
                              ),
                            ),
                            Gap(1.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.person_outline_outlined,
                                  color: appGrey,
                                  size: 16,
                                ),
                                Gap(1.w),
                                Text(
                                  "20 Personne(s)",
                                  style: TextStyle(
                                    fontSize: 13.sp,
                                    color: appGrey,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
