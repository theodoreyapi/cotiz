import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';

import '../../../../constants/constants.dart';
import '../../../themes/themes.dart';
import '../../goal/goal.dart';
import '../../homes/homes.dart';
import '../../profiles/profiles.dart';
import '../../states/states.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  int currentPageIndex = 0;

  final Widget _home = HomePage();
  final Widget _state = StatePage();
  final Widget _wallet = GoalPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColorFond,
      extendBody: true,
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(4.w),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(4.w),
                        decoration: BoxDecoration(
                          color: appWhite,
                          borderRadius: BorderRadius.circular(3.w),
                        ),
                        child: FlutterLogo(),
                      ),
                      Spacer(),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => NotificationPage(),
                            ),
                          );
                        },
                        child: Container(
                          padding: EdgeInsets.all(4.w),
                          decoration: BoxDecoration(
                            color: appWhite,
                            borderRadius: BorderRadius.circular(3.w),
                          ),
                          child: Badge(
                            label: Text('0'),
                            backgroundColor: appBlack,
                            child: Icon(
                              Icons.notifications_none_outlined,
                              color: appBlack,
                            ),
                          ),
                        ),
                      ),
                      Gap(1.w),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ProfilePage(),
                            ),
                          );
                        },
                        child: Container(
                          padding: EdgeInsets.all(4.w),
                          decoration: BoxDecoration(
                            color: appWhite,
                            borderRadius: BorderRadius.circular(3.w),
                          ),
                          child: Icon(
                            Icons.settings_outlined,
                            color: appBlack,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(child: getBody()),
              ],
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 10,
              child: Padding(
                padding: EdgeInsets.only(left: 15.w, right: 15.w),
                child: CustomNavigationBar(
                  iconSize: 30.0,
                  selectedColor: appWhite,
                  strokeColor: Color(0x300c18fb),
                  unSelectedColor: appGrey,
                  backgroundColor: appBlack,
                  borderRadius: Radius.circular(3.w),
                  items: [
                    CustomNavigationBarItem(icon: Icon(Icons.home)),
                    CustomNavigationBarItem(icon: Icon(Icons.donut_small)),
                    CustomNavigationBarItem(
                      icon: Icon(Icons.account_balance_wallet),
                    ),
                  ],
                  currentIndex: currentPageIndex,
                  onTap: (index) {
                    setState(() {
                      currentPageIndex = index;
                    });
                  },
                  isFloating: true,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget getBody() {
    if (currentPageIndex == 0) {
      return _home;
    } else if (currentPageIndex == 1) {
      return _state;
    } else {
      return _wallet;
    }
  }
}
