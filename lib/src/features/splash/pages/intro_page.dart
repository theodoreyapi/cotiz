import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../constants/constants.dart';
import '../../../themes/themes.dart';
import '../../../widgets/widgets.dart';
import '../../auths/login/login.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(4.w),
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              appColor,
              appColorSecond,
            ],
            stops: [0.45, 1.0],
          ),
        ),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                AppConstants.appName,
                style: TextStyle(
                  color: appWhite,
                  fontWeight: FontWeight.bold,
                  fontSize: 30.sp,
                ),
              ),
              Text(
                "Cotisons et suivons tous",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: appWhite,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.sp,
                ),
              ),
              Text(
                AppConstants.txtLoren,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: appWhite,
                  fontWeight: FontWeight.bold,
                  fontSize: 15.sp,
                ),
              ),
              Spacer(),
              Image.asset(
                "assets/images/commence.png",
                width: 80.w,
              ),
              Spacer(),
              SubmitButton(
                AppConstants.btnNext,
                onPressed: () async {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginPage(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
