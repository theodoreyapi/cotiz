import 'package:cotiz/constants/constants.dart';
import 'package:cotiz/src/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';

import '../../../widgets/widgets.dart';

class HomeSettingPage extends StatefulWidget {
  const HomeSettingPage({super.key});

  @override
  State<HomeSettingPage> createState() => _HomeSettingPageState();
}

class _HomeSettingPageState extends State<HomeSettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appWhite,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                surfaceTintColor: appWhite,
                color: appWhite,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    AppConstants.txtLoren,
                    style: TextStyle(
                      color: appColor,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),
              Card(
                surfaceTintColor: appWhite,
                color: appWhite,
                child: ListTile(
                  onTap: () {},
                  leading: Icon(
                    Icons.edit_outlined,
                    color: appBlack,
                  ),
                  title: Text(
                    "Modifier la cagnotte",
                    style: TextStyle(
                      color: appBlack,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  trailing: Icon(
                    Icons.navigate_next_outlined,
                    color: appBlack,
                  ),
                ),
              ),
              Card(
                surfaceTintColor: appWhite,
                color: appWhite,
                child: ListTile(
                  onTap: () {},
                  leading: Icon(
                    Icons.person_add_alt_1_outlined,
                    color: appBlack,
                  ),
                  title: Text(
                    "Désigner un sous admin",
                    style: TextStyle(
                      color: appBlack,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  trailing: Icon(
                    Icons.navigate_next_outlined,
                    color: appBlack,
                  ),
                ),
              ),
              Card(
                surfaceTintColor: appWhite,
                color: appWhite,
                child: ListTile(
                  onTap: () {
                    showModalBottomSheet<void>(
                      context: context,
                      backgroundColor: appWhite,
                      builder: (BuildContext context) {
                        return SizedBox(
                          height: 300,
                          child: Padding(
                            padding: EdgeInsets.all(4.w),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Text(
                                  "Personne ne pourra participer à cette cotisation. Êtes-vous sûr?",
                                  style: TextStyle(
                                    color: appBlack,
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Gap(2.h),
                                Container(
                                  padding: EdgeInsets.all(2.w),
                                  decoration: BoxDecoration(
                                    color: appColorSecond.withValues(alpha: .1),
                                    borderRadius: BorderRadius.circular(3.w),
                                  ),
                                  child: ListTile(
                                    leading: Icon(
                                      Icons.info_outline,
                                      color: appColorSecond,
                                    ),
                                    title: Text(
                                      "La suppression de la cotisation sera "
                                      "irréssible. S'il y'a encore de l'argent cotisé, "
                                      "il sera reversésur votre compte Mobile Money.",
                                      style: TextStyle(
                                        color: appColorSecond,
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ),
                                Gap(2.h),
                                Row(
                                  children: [
                                    Expanded(
                                      child: CancelButton(
                                        AppConstants.btnCancel,
                                        height: 10.w,
                                        fontSize: 15.sp,
                                        onPressed: () => Navigator.pop(context),
                                      ),
                                    ),
                                    Expanded(
                                      child: SubmitButton(
                                        AppConstants.btnDelete,
                                        height: 10.w,
                                        fontSize: 15.sp,
                                        couleur: Colors.red,
                                        onPressed: () async {},
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                  leading: Icon(
                    Icons.delete_forever_outlined,
                    color: Colors.red,
                  ),
                  title: Text(
                    "Supprimer la cagnotte",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 15.sp,
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
