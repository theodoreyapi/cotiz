import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pinput/pinput.dart';
import 'package:sizer/sizer.dart';

import '../../../../../constants/constants.dart';
import '../../../../themes/themes.dart';
import '../../../../widgets/widgets.dart';
import '../forgot.dart';

class CodeOtpPage extends StatefulWidget {
  const CodeOtpPage({super.key});

  @override
  State<CodeOtpPage> createState() => _CodeOtpPageState();
}

class _CodeOtpPageState extends State<CodeOtpPage> {
  final _formKey = GlobalKey<FormState>();

  var login = TextEditingController();
  var password = TextEditingController();

  final _snackBar = const SnackBar(
    content: Text("Tous les champs sont obligatoires"),
    backgroundColor: Colors.red,
  );

  late final SmsRetriever smsRetriever;
  late final TextEditingController pinController;

  @override
  void initState() {
    super.initState();
    pinController = TextEditingController();
  }

  @override
  void dispose() {
    pinController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: const TextStyle(
        fontSize: 22,
        color: Color.fromRGBO(30, 60, 87, 1),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3.w),
        border: Border.all(color: appColor),
      ),
    );
    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: appColor),
      borderRadius: BorderRadius.circular(3.w),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: Color.fromRGBO(234, 239, 243, 1),
      ),
    );

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
                    "Code OTP",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: appWhite,
                      fontWeight: FontWeight.bold,
                      fontSize: 15.sp,
                    ),
                  ),
                  Text(
                    "Veuillez saisir le code que vous avez reçu sur le numéro saisi",
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
                              Center(
                                child: Pinput(
                                  defaultPinTheme: defaultPinTheme,
                                  focusedPinTheme: focusedPinTheme,
                                  submittedPinTheme: submittedPinTheme,
                                  controller: pinController,
                                  validator: (s) {
                                    return s == '2222' ? null : "Le code n'est pas valide";
                                  },
                                  pinputAutovalidateMode: PinputAutovalidateMode.disabled,
                                  hapticFeedbackType: HapticFeedbackType.lightImpact,
                                  showCursor: true,
                                  onCompleted: (pin) => print(pin),
                                  onChanged: (value) => print(value),
                                ),
                              ),
                              Gap(4.h),
                              Align(
                                alignment: Alignment.center,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Vous n'avez pas reçu de code?",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: appBlack,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 16.sp,
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Renvoyer",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: appColor,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17.sp,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Gap(2.h),
                              SubmitButton(
                                AppConstants.btnProceed,
                                onPressed: () async {
                                  if (_formKey.currentState!.validate()) {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => NewPasswordPage(),
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
