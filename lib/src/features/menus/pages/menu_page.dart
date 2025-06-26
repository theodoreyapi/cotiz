import 'package:flutter/material.dart';

import '../../../../constants/constants.dart';
import '../../../themes/themes.dart';
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
  final Widget _profile = ProfilePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appWhite,
        automaticallyImplyLeading: false,
        title: Text(
          AppConstants.appName,
          style: TextStyle(
            color: appColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.help_outline_outlined,
              size: 30,
            ),
          ),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        backgroundColor: appWhite,
        surfaceTintColor: appWhite,
        indicatorColor: appColor,
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: <Widget>[
          NavigationDestination(
            icon: Icon(
              Icons.home_outlined,
              color: currentPageIndex == 0 ? appWhite : appBlack,
            ),
            label: "Accueil",
          ),
          NavigationDestination(
            icon: Icon(
              Icons.pie_chart_outline,
              color: currentPageIndex == 1 ? appWhite : appBlack,
            ),
            label: "Statistique",
          ),
          NavigationDestination(
            icon: Icon(
              Icons.person_outline_outlined,
              color: currentPageIndex == 2 ? appWhite : appBlack,
            ),
            label: "Profil",
          ),
        ],
      ),
      body: getBody(),
    );
  }

  Widget getBody() {
    if (currentPageIndex == 0) {
      return _home;
    } else if (currentPageIndex == 1) {
      return _state;
    } else {
      return _profile;
    }
  }
}
