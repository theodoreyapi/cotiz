import 'dart:io';

import 'package:cotiz/src/themes/themes.dart';
import 'package:cotiz/src/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sizer/sizer.dart';

import '../../../../constants/constants.dart';

class CreateCagnottePage extends StatefulWidget {
  const CreateCagnottePage({super.key});

  @override
  State<CreateCagnottePage> createState() => _CreateCagnottePageState();
}

class _CreateCagnottePageState extends State<CreateCagnottePage> {
  final _formKey = GlobalKey<FormState>();
  String? _character = '';

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
      backgroundColor: appWhite,
      appBar: AppBar(
        title: Text("Créer une cagnotte"),
        centerTitle: true,
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
                  Text("Titre de la cagnotte"),
                  InputText(
                    hintText: "Ex: Anniversaire de Ketura",
                    keyboardType: TextInputType.text,
                    controller: name,
                    validatorMessage: "Veuillez saisir votre nom",
                  ),
                  Gap(2.h),
                  Text("Description de la cagnotte"),
                  InputText(
                    hintText: "Décrivez l'objectif de votre cagnotte",
                    keyboardType: TextInputType.text,
                    controller: name,
                    maxLines: 5,
                    validatorMessage: "Veuillez saisir votre nom",
                  ),
                  Gap(2.h),
                  Text("Objectif à atteindre"),
                  InputText(
                    hintText: "0",
                    keyboardType: TextInputType.number,
                    controller: name,
                    suffixIcon: Align(
                        alignment: Alignment.centerRight, child: Text("F ")),
                  ),
                  Gap(2.h),
                  Text("Catégorie de la cagnotte"),
                  InputText(
                    hintText: "Sélectionne",
                    keyboardType: TextInputType.text,
                    controller: name,
                  ),
                  Gap(2.h),
                  Text("Date limite de la cagnotte"),
                  InputText(
                    hintText: "Sélectionner une date",
                    keyboardType: TextInputType.text,
                    controller: name,
                    prefixIcon: Icon(Icons.calendar_month_outlined),
                  ),
                  Gap(2.h),
                  Text("Photo de couverture (optionnel)"),
                  InkWell(
                    onTap: _pickImage,
                    child: Container(
                      height: 150,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: appColor.withValues(alpha: 0.08),
                        borderRadius: BorderRadius.circular(3.w),
                        image: _image != null
                            ? DecorationImage(
                                image: FileImage(_image!),
                                fit: BoxFit.cover,
                              )
                            : null,
                      ),
                      child: _image == null
                          ? Center(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(
                                    Icons.camera_alt_rounded,
                                    size: 50,
                                    color: appBlack,
                                  ),
                                  SizedBox(height: 1.h),
                                  Text(
                                    "Ajouter une photo",
                                    style: TextStyle(
                                      color: appBlack,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 15.sp,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          : null, // si une image existe, ne rien afficher par-dessus
                    ),
                  ),
                  Text("Visibilité"),
                  Container(
                    decoration: BoxDecoration(
                      color: appColor.withValues(alpha: .08),
                      borderRadius: BorderRadius.circular(3.w),
                    ),
                    child: Column(
                      children: [
                        RadioListTile<String>(
                          title: Text(
                            'Publique - visible par tous',
                            style: TextStyle(color: appBlack, fontSize: 15.sp),
                          ),
                          value: 'Public',
                          groupValue: _character,
                          onChanged: (String? value) {
                            setState(() {
                              _character = value;
                            });
                          },
                        ),
                        RadioListTile<String>(
                          title: Text(
                            'Privée - sur invitation uniquement',
                            style: TextStyle(color: appBlack, fontSize: 15.sp),
                          ),
                          value: 'Prive',
                          groupValue: _character,
                          onChanged: (String? value) {
                            setState(() {
                              _character = value;
                            });
                          },
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
          AppConstants.btnCreateCagne,
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
