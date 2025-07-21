import 'package:cotiz/src/features/auths/register/register.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
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
  final PageController _controller = PageController();
  int _currentPage = 0;

  final List<Map<String, String>> _onboardingData = [
    {
      'title': 'Gestion simplifiée',
      'desc':
          "Gérer votre argent facilement avec notre interface intuitive et simplifiée",
      'image': 'assets/svg/wallett.svg',
    },
    {
      'title': 'Transaction',
      'desc': "Envoyez et recevez de l'argent en temps réel",
      'image': 'assets/svg/transaction.svg',
    },
    {
      'title': 'Prêt entre particuliers',
      'desc': "Empruntez ou prêtez de l'argent en toute sécurité",
      'image': 'assets/svg/pret.svg',
    },
    {
      'title': 'Cagnotte',
      'desc': "Commencez à collecter facilement",
      'image': 'assets/svg/pret.svg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColorFond,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(3.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: PageView.builder(
                  controller: _controller,
                  itemCount: _onboardingData.length,
                  onPageChanged: (index) {
                    setState(() {
                      _currentPage = index;
                    });
                  },
                  itemBuilder: (context, index) {
                    final item = _onboardingData[index];
                    return Padding(
                      padding: EdgeInsets.all(4.w),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item['title']!,
                            style: TextStyle(
                              fontSize: 24.sp,
                              color: appBlack,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Gap(1.h),
                          Text(
                            item['desc']!,
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: appGrey,
                            ),
                          ),
                          Spacer(),
                          Center(
                            child: SvgPicture.asset(
                              item['image']!,
                              height: 200,
                            ),
                          ),
                          Spacer(),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 110,
                    child: CancelButton(
                      "Passer",
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => LoginPage()),
                        );
                      },
                    ),
                  ),
                  FloatingActionButton(
                    elevation: 0,
                    backgroundColor: appWhite,
                    onPressed: () {
                      if (_currentPage < _onboardingData.length - 1) {
                        _controller.nextPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      } else {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => LoginPage()),
                        );
                      }
                    },
                    child: Icon(
                      _currentPage == _onboardingData.length - 1
                          ? Icons.check_outlined
                          : Icons.arrow_forward_outlined,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BulletPoint extends StatelessWidget {
  final String text;

  const BulletPoint({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        children: [
          Icon(Icons.circle, size: 8, color: appColor),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(fontSize: 14, color: Colors.black54),
            ),
          ),
        ],
      ),
    );
  }
}
