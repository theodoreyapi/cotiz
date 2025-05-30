import 'package:cotiz/src/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';

import '../../../../constants/constants.dart';
import '../../../widgets/widgets.dart';
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
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(4.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                surfaceTintColor: appWhite,
                color: appWhite,
                child: Padding(
                  padding: EdgeInsets.all(2.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextButton.icon(
                        onPressed: () {},
                        icon: Icon(
                          Icons.remove_red_eye_outlined,
                          color: appBlack,
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
                      Text(
                        "Valeur totale des cotisations",
                        style: TextStyle(
                          color: appBlack,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      Gap(2.h),
                      Row(
                        children: [
                          Expanded(
                            child: SubmitButton(
                              AppConstants.btnInter,
                              height: 10.w,
                              fontSize: 12.sp,
                              onPressed: () async {},
                            ),
                          ),
                          Expanded(
                            child: CancelButton(
                              AppConstants.btnCreate,
                              height: 10.w,
                              fontSize: 13.sp,
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
              Text("Mes cotisations"),
              SizedBox(
                width: double.infinity,
                child: Card(
                  surfaceTintColor: appWhite,
                  color: appWhite,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailHomePage(),
                        ),
                      );
                    },
                    child: Padding(
                      padding: EdgeInsets.all(2.w),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Catégorie",
                            style: TextStyle(
                              color: appBlack,
                              fontSize: 20.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "150 000 FCFA",
                            style: TextStyle(
                              color: appBlack,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Pour la fête de fin d'années",
                            style: TextStyle(
                              color: appBlack,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          Gap(1.h),
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
