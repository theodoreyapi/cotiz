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
      appBar: AppBar(
        backgroundColor: appWhite,
        title: Text("Transférer à ${widget.nom}"),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(4.w),
          child: InputText(
            hintText: "0",
            colorFille: appWhite,
            keyboardType: TextInputType.text,
            controller: amount,
            suffixIcon: Text("FCFA"),
            validatorMessage: "Veuillez saisir le montant",
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
