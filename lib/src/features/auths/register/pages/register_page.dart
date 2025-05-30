import 'dart:io';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:sizer/sizer.dart';

import '../../../../../constants/constants.dart';
import '../../../../themes/themes.dart';
import '../../../../widgets/widgets.dart';
import '../../../menus/menus.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  bool _obscure = true;

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
  var password = TextEditingController();

  String phoneIndicator = "";
  String initialCountry = 'CI';
  PhoneNumber number = PhoneNumber(isoCode: 'CI');

  final _snackBar = const SnackBar(
    content: Text("Tous les champs sont obligatoires"),
    backgroundColor: Colors.red,
  );

  late bool _isChecked = false;

  File? _image;

  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

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
                    "Création de compte",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: appWhite,
                      fontWeight: FontWeight.bold,
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
                          )
                        ),
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
                              Center(
                                child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    CircleAvatar(
                                      radius: 50,
                                      backgroundColor: Colors.blue[100],
                                      backgroundImage:
                                      _image != null ? FileImage(_image!) : null,
                                      child: _image == null
                                          ? Icon(
                                        Icons.person,
                                        size: 50,
                                        color: Colors.blue,
                                      )
                                          : null,
                                    ),
                                    Positioned(
                                      bottom: -10,
                                      child: ElevatedButton.icon(
                                        onPressed: _pickImage,
                                        icon: Icon(
                                          Icons.add,
                                          size: 12,
                                          color: appColor,
                                        ),
                                        label: Text(
                                          "Photo",
                                          style: TextStyle(
                                            color: appColor,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12.sp,
                                          ),
                                        ),
                                        style: ElevatedButton.styleFrom(
                                          padding: const EdgeInsets.symmetric(horizontal: 10),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(20),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Gap(1.h),
                              InputText(
                                hintText: "Nom",
                                keyboardType: TextInputType.text,
                                controller: name,
                                validatorMessage: "Veuillez saisir votre nom",
                              ),
                              Gap(1.h),
                              InputText(
                                hintText: "Prénom",
                                keyboardType: TextInputType.text,
                                controller: lastName,
                                validatorMessage: "Veuillez saisir votre prénom",
                              ),
                              Gap(1.h),
                              Container(
                                padding: EdgeInsets.only(left: 4.w),
                                decoration: BoxDecoration(
                                  color: appColor.withValues(alpha:.08),
                                  borderRadius: BorderRadius.circular(3.w),
                                  border: Border.all(
                                    color: _isFocused ? appColor : Colors.transparent,
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
                                    selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                                  ),
                                  ignoreBlank: false,
                                  autoValidateMode: AutovalidateMode.disabled,
                                  selectorTextStyle: const TextStyle(
                                    color: Colors.black,
                                  ),
                                  initialValue: number,
                                  textFieldController: phone,
                                  formatInput: true,
                                  keyboardType: const TextInputType.numberWithOptions(
                                    signed: true,
                                    decimal: true,
                                  ),
                                  inputBorder: const OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                  ),
                                  onSaved: (PhoneNumber number) {},
                                ),
                              ),
                              Gap(1.h),
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
                              Gap(1.h),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Checkbox(
                                    value: _isChecked,
                                    onChanged: (value) {
                                      setState(() {
                                        _isChecked = value ?? false;
                                      });
                                    },
                                  ),
                                  Expanded(
                                    child: Text(
                                      "J'accepte toutes les conditions, la confidentialité et les frais",
                                      style: TextStyle(fontSize: 14.sp),
                                    ),
                                  ),
                                ],
                              ),
                              SubmitButton(
                                AppConstants.btnRegister,
                                onPressed: () async {
                                  if (_formKey.currentState!.validate()) {
                                  } else {
                                    ScaffoldMessenger.of(context).showSnackBar(_snackBar);
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => MenuPage(),
                                      ),
                                    );
                                  }
                                },
                              ),
                              Gap(2.h),
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "Rassurez-vous, vos données personnelles ne sont "
                                      "visibles que par vous. Personne d'autre "
                                      "n'y aura accès.",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: appBlack,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 12.sp,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
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
