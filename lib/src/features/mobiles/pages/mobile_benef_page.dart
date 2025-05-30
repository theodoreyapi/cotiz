import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';

import '../../../themes/themes.dart';
import '../../../widgets/widgets.dart';
import '../mobiles.dart';

class MobileBenefPage extends StatefulWidget {
  const MobileBenefPage({super.key});

  @override
  State<MobileBenefPage> createState() => _MobileBenefPageState();
}

class _MobileBenefPageState extends State<MobileBenefPage> {
  var number = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bénéficiaire"),
        backgroundColor: appWhite,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(4.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InputText(
                hintText: "Nom ou Numéro de téléphone",
                colorFille: appWhite,
                keyboardType: TextInputType.text,
                controller: number,
                prefixIcon: Icon(
                  Icons.search_outlined,
                  color: appBlack,
                ),
                validatorMessage: "Veuillez saisir numéro ou nom",
              ),
              Card(
                surfaceTintColor: appWhite,
                color: appWhite,
                child: ListTile(
                  onTap: () {},
                  leading: Icon(
                    Icons.numbers_outlined,
                    color: appColorSecond,
                  ),
                  title: Text(
                    "Saisir numéro de téléphone",
                    style: TextStyle(
                      color: appColorSecond,
                      fontWeight: FontWeight.bold,
                      fontSize: 15.sp,
                    ),
                  ),
                  subtitle: Text(
                    "Si le numéro ne se trouve pas dans vos contacts",
                    style: TextStyle(
                      color: appColor,
                      fontWeight: FontWeight.normal,
                      fontSize: 12.sp,
                    ),
                  ),
                  trailing: CircleAvatar(
                    radius: 15,
                    child: Icon(
                      Icons.navigate_next_outlined,
                      color: appColorSecond,
                    ),
                  ),
                ),
              ),
              Card(
                surfaceTintColor: appWhite,
                color: appWhite,
                child: ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MobilePage(
                          type: 'Transférer',
                        ),
                      ),
                    );
                  },
                  leading: ClipOval(
                    child: FlutterLogo(),
                  ),
                  title: Text(
                    "A Moi",
                    style: TextStyle(
                      color: appBlack,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    "05 85 83 16 47",
                    style: TextStyle(
                      color: appColor,
                      fontSize: 13.sp,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  trailing: CircleAvatar(
                    radius: 15,
                    child: Icon(
                      Icons.navigate_next_outlined,
                      color: appColor,
                    ),
                  ),
                ),
              ),
              Gap(2.h),
              Text("Mes contacts"),
              Expanded(
                child: ListView(
                  children: [
                    Card(
                      surfaceTintColor: appWhite,
                      color: appWhite,
                      child: ListTile(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MobilePage(
                                type: 'Transférer',
                              ),
                            ),
                          );
                        },
                        leading: ClipOval(
                          child: Icon(
                            Icons.person_pin,
                            size: 40,
                          ),
                        ),
                        title: Text(
                          "Son nom",
                          style: TextStyle(
                            color: appBlack,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text(
                          "Numéro de téléphone",
                          style: TextStyle(
                            color: appColor,
                            fontSize: 13.sp,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        trailing: CircleAvatar(
                          radius: 15,
                          child: Icon(
                            Icons.navigate_next_outlined,
                            color: appColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
