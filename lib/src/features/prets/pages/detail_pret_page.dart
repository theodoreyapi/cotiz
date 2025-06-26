import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';

import '../../../../constants/constants.dart';
import '../../../themes/themes.dart';
import '../../../widgets/widgets.dart';

class DetailPretPage extends StatefulWidget {
  const DetailPretPage({super.key});

  @override
  State<DetailPretPage> createState() => _DetailPretPageState();
}

class _DetailPretPageState extends State<DetailPretPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appWhite,
      appBar: AppBar(
        title: Text("Détails prêt"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(3.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Montant demandé",
                  style: TextStyle(fontSize: 16.sp, color: Colors.black54),
                ),
                Gap(1.h),
                Text(
                  "150 000 FCFA",
                  style: TextStyle(
                    fontSize: 22.sp,
                    fontWeight: FontWeight.bold,
                    color: appColor,
                  ),
                ),
                Gap(2.h),
                Container(
                  padding: EdgeInsets.all(3.w),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: appColor.withValues(alpha: .08),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Durée du prêt",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Gap(1.h),
                      Text(
                        "1 mois",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 14.sp),
                      )
                    ],
                  ),
                ),
                Gap(2.h),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(3.w),
                        decoration: BoxDecoration(
                          color: appColor.withValues(alpha: .08),
                          borderRadius: BorderRadius.circular(3.w),
                        ),
                        child: Column(
                          children: [
                            Text("Taux d'intérêt"),
                            Gap(1.h),
                            Text(
                              "1.5%",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18.sp,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Gap(2.w),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(3.w),
                        decoration: BoxDecoration(
                          color: appColor.withValues(alpha: .08),
                          borderRadius: BorderRadius.circular(3.w),
                        ),
                        child: Column(
                          children: [
                            Text("Mensualités"),
                            Gap(1.h),
                            Text(
                              "152 250 FCFA",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18.sp,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Gap(2.h),
                Text(
                  "Motif du prêt",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text("Projet personnel"),
                Gap(2.h),
                Text(
                  "A qui est adressé",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text("Yapi nguessan kouassi théodore"),
                Gap(2.h),
                Text(
                  "Document",
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: appColor.withValues(alpha: .08),
                    borderRadius: BorderRadius.circular(3.w),
                  ),
                  child: ListTile(
                    onTap: () {},
                    leading: SvgPicture.asset("assets/svg/piece.svg"),
                    title: Text("Pièce d'identité"),
                    trailing: InkWell(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.all(2.w),
                        decoration: BoxDecoration(
                          color: appWhite,
                          borderRadius: BorderRadius.circular(3.w),
                        ),
                        child: Icon(
                          Icons.cloud_download_outlined,
                          color: appColor,
                        ),
                      ),
                    ),
                  ),
                ),
                Gap(2.h),
                Container(
                  padding: EdgeInsets.all(3.w),
                  decoration: BoxDecoration(
                    color: appColor.withValues(alpha: .08),
                    borderRadius: BorderRadius.circular(3.w),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset("assets/svg/garentie.svg"),
                          Gap(1.w),
                          Text(
                            "Garanties",
                            style: TextStyle(
                              color: appBlack,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                      Gap(1.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Score de crédit estimé",
                            style: TextStyle(
                              color: appBlack,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          Gap(1.w),
                          Text(
                            "Exellent",
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                      Gap(1.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Niveau de risque",
                            style: TextStyle(
                              color: appBlack,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          Gap(1.w),
                          Text(
                            "A+",
                            style: TextStyle(
                              color: appColor,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(4.w),
        child: Row(
          children: [
            // Si c'est celui qui donne le prêt: btnRefus
            Expanded(
              child: SubmitButton(
                AppConstants.btnCancel,
                couleur: Colors.red,
                onPressed: () async {},
              ),
            ),
            Expanded(
              child: SubmitButton(
                AppConstants.btnFinance,
                couleur: Colors.green,
                onPressed: () async {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
