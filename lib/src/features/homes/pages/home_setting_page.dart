import 'package:cotiz/constants/constants.dart';
import 'package:cotiz/src/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';
import 'package:super_tooltip/super_tooltip.dart';

import '../../../widgets/widgets.dart';

class HomeSettingPage extends StatefulWidget {
  const HomeSettingPage({super.key});

  @override
  State<HomeSettingPage> createState() => _HomeSettingPageState();
}

class _HomeSettingPageState extends State<HomeSettingPage> {
  final _controller = SuperTooltipController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColorFond,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(3.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      padding: EdgeInsets.all(4.w),
                      decoration: BoxDecoration(
                        color: appWhite,
                        borderRadius: BorderRadius.circular(3.w),
                      ),
                      child: Icon(Icons.arrow_back_outlined),
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      await _controller.showTooltip();
                    },
                    child: SuperTooltip(
                      constraints: BoxConstraints(maxWidth: 350),
                      shadowColor: appGrey,
                      backgroundColor: appWhite,
                      showDropBoxFilter: true,
                      showBarrier: true,
                      controller: _controller,
                      content: Text(
                        AppConstants.txtLoren,
                        softWrap: true,
                        style: TextStyle(
                          color: appGrey,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      child: Container(
                        padding: EdgeInsets.all(4.w),
                        decoration: BoxDecoration(
                          color: appWhite,
                          borderRadius: BorderRadius.circular(3.w),
                        ),
                        child: Icon(
                          Icons.info_outline,
                          color: appBlack,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Gap(2.h),
              Container(
                margin: EdgeInsets.only(bottom: 1.h),
                decoration: BoxDecoration(
                  color: appWhite,
                  borderRadius: BorderRadius.circular(3.w),
                ),
                child: ListTile(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 8.0, vertical: 0.0),
                  minVerticalPadding: 0.0,
                  horizontalTitleGap: 8.0,
                  leading: Container(
                    padding: EdgeInsets.all(3.w),
                    decoration: BoxDecoration(
                      color: appColorFond,
                      borderRadius: BorderRadius.circular(3.w),
                    ),
                    child: Icon(
                      Icons.edit_outlined,
                      color: appBlack,
                    ),
                  ),
                  title: Text("Modifier la cagnotte"),
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
                ),
                child: ListTile(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 8.0, vertical: 0.0),
                  minVerticalPadding: 0.0,
                  horizontalTitleGap: 8.0,
                  leading: Container(
                    padding: EdgeInsets.all(3.w),
                    decoration: BoxDecoration(
                      color: appColorFond,
                      borderRadius: BorderRadius.circular(3.w),
                    ),
                    child: Icon(
                      Icons.person_add_alt_1_outlined,
                      color: appBlack,
                    ),
                  ),
                  title: Text("Désigner un sous admin"),
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
                ),
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 8.0,
                    vertical: 0.0,
                  ),
                  minVerticalPadding: 0.0,
                  horizontalTitleGap: 8.0,
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
                                      "il sera reverser votre compte CotiZ.",
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
                                    Gap(2.w),
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
                  leading: Container(
                    padding: EdgeInsets.all(3.w),
                    decoration: BoxDecoration(
                      color: Colors.red.withValues(alpha: .1),
                      borderRadius: BorderRadius.circular(3.w),
                    ),
                    child: Icon(
                      Icons.delete_forever_outlined,
                      color: Colors.red,
                    ),
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
