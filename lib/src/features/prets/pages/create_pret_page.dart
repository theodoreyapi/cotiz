import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';

import '../../../../constants/constants.dart';
import '../../../themes/themes.dart';
import '../../../widgets/widgets.dart';

class CreatePretPage extends StatefulWidget {
  const CreatePretPage({super.key});

  @override
  State<CreatePretPage> createState() => _CreatePretPageState();
}

class _CreatePretPageState extends State<CreatePretPage> {
  final _formKey = GlobalKey<FormState>();

  final FocusNode _focusNode = FocusNode();
  bool _isFocused = false;

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      setState(() {
        _isFocused = _focusNode.hasFocus;
      });
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  var email = TextEditingController();
  var phone = TextEditingController();
  var name = TextEditingController();
  var lastName = TextEditingController();

  final _snackBar = const SnackBar(
    content: Text("Veuillez remplir les champs neccessaires"),
    backgroundColor: Colors.red,
  );

  double montant = 150000;
  int duree = 24;

  final NumberFormat currencyFormat =
      NumberFormat.currency(locale: 'fr_FR', symbol: 'FCFA', decimalDigits: 0);

  List<int> durees = [1, 3, 6, 9];

  double get tauxInteret {
    // Exemple simple : taux fixe de 4.9%
    return 1.5;
  }

  int get mensualite {
    /* double tauxMensuel = tauxInteret / 100 / 12;
    int n = duree;
    double mensualite =
        montant * tauxMensuel / (1 - (1 / (pow(1 + tauxMensuel, n))));
    return mensualite.round();*/
    double interet = montant * tauxInteret / 100;
    double total = montant + interet;
    return (total / duree).round();
  }

  void onSliderChanged(double value) {
    setState(() {
      montant = (value / 10000).round() * 10000;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appWhite,
      appBar: AppBar(
        title: Text("Demande de prêt"),
        centerTitle: true,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.info_outline))],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(3.w),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Montant souhaité",
                    style: TextStyle(fontSize: 16.sp, color: Colors.black54),
                  ),
                  Gap(1.h),
                  Text(
                    currencyFormat.format(montant),
                    style: TextStyle(
                      fontSize: 22.sp,
                      fontWeight: FontWeight.bold,
                      color: appColor,
                    ),
                  ),
                  Slider(
                    value: montant,
                    min: 10000,
                    max: 500000,
                    divisions: 49,
                    // (500000 - 10000) / 10000
                    onChanged: onSliderChanged,
                    activeColor: appColor,
                    inactiveColor: appColor.withValues(alpha: .3),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("10 000 FCFA"),
                      Text("500 000 FCFA"),
                    ],
                  ),
                  Gap(2.h),
                  Container(
                    padding: EdgeInsets.all(3.w),
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: durees.map((d) {
                            final bool isSelected = duree == d;
                            return Expanded(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 4),
                                child: ElevatedButton(
                                  onPressed: () {
                                    setState(() => duree = d);
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        isSelected ? appColor : Colors.white,
                                    foregroundColor: isSelected
                                        ? Colors.white
                                        : Colors.black,
                                    elevation: 0,
                                    side: BorderSide(
                                      color: isSelected
                                          ? appColor
                                          : Colors.grey.shade300,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "$d mois",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 14.sp),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }).toList(),
                        ),
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
                                "${tauxInteret.toStringAsFixed(1)}%",
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
                                currencyFormat.format(mensualite),
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
                  Text("Motif du prêt"),
                  InputText(
                    hintText: "Ex: Projet personnel",
                    keyboardType: TextInputType.text,
                    controller: name,
                    validatorMessage: "Veuillez saisir",
                  ),
                  Gap(2.h),
                  Text("A qui est adressé"),
                  InputText(
                    hintText: "Contact",
                    keyboardType: TextInputType.number,
                    controller: name,
                    suffixIcon: Icon(Icons.contact_phone_outlined),
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
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(4.w),
        child: SubmitButton(
          AppConstants.btnSubmitPret,
          onPressed: () async {
            if (_formKey.currentState!.validate()) {
            } else {
              ScaffoldMessenger.of(context).showSnackBar(_snackBar);
            }
          },
        ),
      ),
    );
  }
}
