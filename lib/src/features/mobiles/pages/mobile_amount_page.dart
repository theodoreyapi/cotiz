import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';

import '../../../../constants/constants.dart';
import '../../../themes/themes.dart';
import '../../../widgets/widgets.dart';

class MobileAmountPage extends StatefulWidget {
  String? nom;

  MobileAmountPage({
    super.key,
    this.nom,
  });

  @override
  State<MobileAmountPage> createState() => _MobileAmountPageState();
}

class _MobileAmountPageState extends State<MobileAmountPage> {
  var amount = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColorFond,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(4.w),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Transférer à ${widget.nom}",
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
                hintText: "0",
                colorFille: appWhite,
                keyboardType: TextInputType.number,
                controller: amount,
                suffixIcon: Text("FCFA"),
                validatorMessage: "Veuillez saisir le montant",
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        color: appWhite,
        padding: EdgeInsets.all(4.w),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text("Frais d'opération"),
                ),
                Expanded(
                  child: Text(
                    "-",
                    textAlign: TextAlign.end,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    "Montant total à payer",
                    style: TextStyle(
                      color: appBlack,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    "-",
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      color: appBlack,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            Gap(2.h),
            SubmitButton(
              AppConstants.btnValid,
              onPressed: () async {},
            ),
          ],
        ),
      ),
    );
  }
}
