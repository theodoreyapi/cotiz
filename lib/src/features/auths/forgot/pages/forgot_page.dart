import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:sizer/sizer.dart';

import '../../../../../constants/constants.dart';
import '../../../../themes/themes.dart';
import '../../../../widgets/widgets.dart';
import '../forgot.dart';

class ForgotPage extends StatefulWidget {
  const ForgotPage({super.key});

  @override
  State<ForgotPage> createState() => _ForgotPageState();
}

class _ForgotPageState extends State<ForgotPage> {
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

  var phone = TextEditingController();

  String phoneIndicator = "";
  String initialCountry = 'CI';
  PhoneNumber number = PhoneNumber(isoCode: 'CI');

  final _snackBar = const SnackBar(
    content: Text("Le numéro de téléphone est obligatoire"),
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
                    "Mot de passe oublié",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: appWhite,
                      fontWeight: FontWeight.bold,
                      fontSize: 15.sp,
                    ),
                  ),
                  Text(
                    "Entrez votre adresse e-mail qui est associé a votre "
                    "compte et vous receverai un mail pour "
                    "réinitialisation de mot de passe.",
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
                              Container(
                                padding: EdgeInsets.only(left: 4.w),
                                decoration: BoxDecoration(
                                  color: appColor.withValues(alpha: .08),
                                  borderRadius: BorderRadius.circular(3.w),
                                  border: Border.all(
                                    color: _isFocused
                                        ? appColor
                                        : Colors.transparent,
                                    width: 1.5,
                                  ),
                                ),
                                child: InternationalPhoneNumberInput(
                                  focusNode: _focusNode,
                                  onInputChanged: (PhoneNumber number) {
                                    phoneIndicator = number.phoneNumber!;
                                    print(phoneIndicator);
                                  },
                                  onInputValidated: (bool value) {},
                                  errorMessage: "Le numéro est invalide",
                                  hintText: "Numéro de téléphone",
                                  selectorConfig: const SelectorConfig(
                                    selectorType:
                                        PhoneInputSelectorType.BOTTOM_SHEET,
                                  ),
                                  ignoreBlank: false,
                                  autoValidateMode: AutovalidateMode.disabled,
                                  selectorTextStyle: const TextStyle(
                                    color: Colors.black,
                                  ),
                                  initialValue: number,
                                  textFieldController: phone,
                                  formatInput: true,
                                  keyboardType:
                                      const TextInputType.numberWithOptions(
                                    signed: true,
                                    decimal: true,
                                  ),
                                  inputBorder: const OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                  ),
                                  onSaved: (PhoneNumber number) {},
                                ),
                              ),
                              Gap(2.h),
                              SubmitButton(
                                AppConstants.btnPassword,
                                onPressed: () async {
                                  if (_formKey.currentState!.validate()) {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => CodeOtpPage(),
                                      ),
                                    );
                                  } else {
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(_snackBar);
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
