import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';

import '../../../../../constants/constants.dart';
import '../../../../themes/themes.dart';
import '../../../../widgets/widgets.dart';
import '../../../menus/menus.dart';

class NewPasswordPage extends StatefulWidget {
  const NewPasswordPage({super.key});

  @override
  State<NewPasswordPage> createState() => _NewPasswordPageState();
}

class _NewPasswordPageState extends State<NewPasswordPage> {
  final _formKey = GlobalKey<FormState>();
  bool _obscure = true;

  var password = TextEditingController();
  var newPassword = TextEditingController();

  final _snackBar = const SnackBar(
    content: Text("Tous les champs sont obligatoires"),
    backgroundColor: Colors.red,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(4.w),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: FloatingActionButton.small(
                      heroTag: 'back',
                      shape: CircleBorder(),
                      onPressed: () => Navigator.pop(context),
                      backgroundColor: appWhite,
                      foregroundColor: appWhite,
                      child: Icon(
                        Icons.arrow_back_outlined,
                        color: appColor,
                      ),
                    ),
                  ),
                  Gap(2.h),
                  Text(
                    AppConstants.appName,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: appWhite,
                      fontWeight: FontWeight.bold,
                      fontSize: 30.sp,
                    ),
                  ),
                  Text(
                    "Nouveau mot de passe",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: appWhite,
                      fontWeight: FontWeight.bold,
                      fontSize: 15.sp,
                    ),
                  ),
                  Text(
                    "Veuillez saisir un nouveau mot de passe. "
                        "Le nouveau mot de passe ne doit pas être "
                        "le même que le précédent.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: appWhite,
                      fontWeight: FontWeight.normal,
                      fontSize: 15.sp,
                    ),
                  ),
                  Gap(2.h),
                  Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.w),
                          color: appWhite.withValues(alpha: .6),
                        ),
                        child: Padding(
                            padding: EdgeInsets.all(3.w),
                            child: Container(
                              height: 10.h,
                            )),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 3.w),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.w),
                          color: appWhite,
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(3.w),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Gap(2.h),
                              InputPassword(
                                hintText: "Mot de passe",
                                controller: password,
                                validatorMessage: "Veuillez saisir votre mot de passe",
                                suffixIcon: IconButton(
                                    icon: Icon(
                                      _obscure ? Icons.visibility_off : Icons.visibility,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        _obscure = !_obscure;
                                      });
                                    }),
                              ),
                              Gap(2.h),
                              InputPassword(
                                hintText: "Confirmer le mot de passe",
                                controller: newPassword,
                                validatorMessage: "Veuillez saisir votre mot de passe",
                                suffixIcon: IconButton(
                                    icon: Icon(
                                      _obscure ? Icons.visibility_off : Icons.visibility,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        _obscure = !_obscure;
                                      });
                                    }),
                              ),
                              Gap(2.h),
                              SubmitButton(
                                AppConstants.btnContinue,
                                onPressed: () async {
                                  if (_formKey.currentState!.validate()) {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => MenuPage(),
                                      ),
                                    );
                                  } else {
                                    ScaffoldMessenger.of(context).showSnackBar(_snackBar);
                                  }
                                },
                              ),
                            ],
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
      ),
    );
  }
}
