import 'package:cotiz/src/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../mobiles.dart';

class MobilePage extends StatefulWidget {
  String? type;

  MobilePage({
    super.key,
    this.type,
  });

  @override
  State<MobilePage> createState() => _MobilePageState();
}

class _MobilePageState extends State<MobilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.type!} via"),
        backgroundColor: appWhite,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(4.w),
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
                        builder: (context) => MobileAmountPage(nom: 'Moi'),
                      ),
                    );
                  },
                  leading: ClipOval(
                    child: Image.asset(
                      "assets/images/orange.png",
                      height: 4.h,
                    ),
                  ),
                  title: Text(
                    "Orange Money",
                    style: TextStyle(
                      color: appBlack,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    "1% - Frais Opérateur",
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
              Card(
                surfaceTintColor: appWhite,
                color: appWhite,
                child: ListTile(
                  leading: ClipOval(
                    child: Image.asset(
                      "assets/images/wave.png",
                      height: 4.h,
                    ),
                  ),
                  title: Text(
                    "Wave",
                    style: TextStyle(
                      color: appBlack,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    "1% - Frais Opérateur",
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
              Card(
                surfaceTintColor: appWhite,
                color: appWhite,
                child: ListTile(
                  leading: ClipOval(
                    child: Image.asset(
                      "assets/images/mtn.jpg",
                      height: 4.h,
                    ),
                  ),
                  title: Text(
                    "MTN MoMo",
                    style: TextStyle(
                      color: appBlack,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    "1% - Frais Opérateur",
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
              Card(
                surfaceTintColor: appWhite,
                color: appWhite,
                child: ListTile(
                  leading: ClipOval(
                    child: Image.asset(
                      "assets/images/moov.png",
                      height: 4.h,
                    ),
                  ),
                  title: Text(
                    "Moov Money",
                    style: TextStyle(
                      color: appBlack,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    "1% - Frais Opérateur",
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
      ),
    );
  }
}
