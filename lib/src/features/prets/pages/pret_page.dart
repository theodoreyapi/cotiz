import 'package:cotiz/src/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';

import '../../../../constants/constants.dart';
import '../../../widgets/widgets.dart';
import '../prets.dart';

class PretPage extends StatefulWidget {
  const PretPage({super.key});

  @override
  State<PretPage> createState() => _PretPageState();
}

class _PretPageState extends State<PretPage> with TickerProviderStateMixin {
  late final TabController _tabController;

  var search = TextEditingController();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
    Future.delayed(const Duration(milliseconds: 200));
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appWhite,
      appBar: AppBar(
        title: Text("Prêt P2P"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(3.w),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(3.w),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3.w),
                  color: appColor.withValues(alpha: .2),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Prêt",
                      style: TextStyle(
                        color: appBlack,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Text(
                      "15 000 000 FCFA",
                      style: TextStyle(
                        color: appBlack,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Demandé: 20 000 000 FCFA",
                      style: TextStyle(
                        color: appBlack,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Gap(2.h),
                    SubmitButtonIcon(
                      AppConstants.btnCreatePret,
                      colorIcon: appWhite,
                      icone: "assets/svg/add.svg",
                      onPressed: () async {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CreatePretPage(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
              Gap(2.h),
              InputText(
                hintText: "Rechercher un prêt",
                keyboardType: TextInputType.text,
                controller: search,
                prefixIcon: Icon(Icons.search_outlined),
                validatorMessage: "Veuillez saisir un titre",
              ),
              Gap(1.h),
              Container(
                decoration: BoxDecoration(
                  color: appColor.withValues(alpha: .3),
                  borderRadius: BorderRadius.all(Radius.circular(3.w)),
                ),
                child: TabBar(
                  controller: _tabController,
                  indicatorColor: Colors.transparent,
                  dividerColor: Colors.transparent,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(3.w),
                    color: appColor,
                  ),
                  labelColor: appWhite,
                  indicatorSize: TabBarIndicatorSize.tab,
                  unselectedLabelColor: appColor,
                  isScrollable: true,
                  tabAlignment: TabAlignment.start,
                  tabs: <Widget>[
                    Tab(text: "Tous"),
                    Tab(text: "En cours"),
                    Tab(text: "Nouveau"),
                    Tab(text: "Financé"),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    ListView(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailPretPage(),
                              ),
                            );
                          },
                          child: Container(
                            padding: EdgeInsets.all(3.w),
                            margin: EdgeInsets.only(bottom: 2.w),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3.w),
                              color: appWhite,
                              border: Border.all(
                                color: Colors.grey,
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ListTile(
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal: 8.0, vertical: 0.0),
                                  minVerticalPadding: 0.0,
                                  horizontalTitleGap: 8.0,
                                  title: Text(
                                    "20 000 FCFA",
                                    style: TextStyle(
                                      color: appBlack,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  subtitle: Text(
                                    "Montant demandé",
                                    style: TextStyle(
                                      color: appBlack,
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                  trailing: Container(
                                    padding: EdgeInsets.all(3.w),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.w),
                                      color: appColor.withValues(alpha: .3),
                                    ),
                                    child: Text(
                                      "En cours",
                                      style: TextStyle(
                                        color: appColor,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                Text(
                                  "Yapi n'guessan.",
                                  style: TextStyle(
                                    color: appBlack,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "Pour manger",
                                  style: TextStyle(
                                    color: appBlack,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Gap(2.h),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "1.5%",
                                      style: TextStyle(
                                        color: appBlack,
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                    Text(
                                      "1 mois",
                                      style: TextStyle(
                                        color: appBlack,
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                    Text(
                                      "Risque A",
                                      style: TextStyle(
                                        color: appBlack,
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(3.w),
                          margin: EdgeInsets.only(bottom: 2.w),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3.w),
                            color: appWhite,
                            border: Border.all(
                              color: Colors.grey,
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ListTile(
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 8.0, vertical: 0.0),
                                minVerticalPadding: 0.0,
                                horizontalTitleGap: 8.0,
                                title: Text(
                                  "20 000 FCFA",
                                  style: TextStyle(
                                    color: appBlack,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                subtitle: Text(
                                  "Montant demandé",
                                  style: TextStyle(
                                    color: appBlack,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                trailing: Container(
                                  padding: EdgeInsets.all(3.w),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.w),
                                    color: Colors.green[200],
                                  ),
                                  child: Text(
                                    "Nouveau",
                                    style: TextStyle(
                                      color: Colors.green,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                "Yapi n'guessan.",
                                style: TextStyle(
                                  color: appBlack,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Pour manger",
                                style: TextStyle(
                                  color: appBlack,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              Gap(2.h),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "1.5%",
                                    style: TextStyle(
                                      color: appBlack,
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                  Text(
                                    "1 mois",
                                    style: TextStyle(
                                      color: appBlack,
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                  Text(
                                    "Risque A",
                                    style: TextStyle(
                                      color: appBlack,
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(3.w),
                          margin: EdgeInsets.only(bottom: 2.w),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3.w),
                            color: appWhite,
                            border: Border.all(
                              color: Colors.grey,
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ListTile(
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 8.0, vertical: 0.0),
                                minVerticalPadding: 0.0,
                                horizontalTitleGap: 8.0,
                                title: Text(
                                  "20 000 FCFA",
                                  style: TextStyle(
                                    color: appBlack,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                subtitle: Text(
                                  "Montant demandé",
                                  style: TextStyle(
                                    color: appBlack,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                trailing: Container(
                                  padding: EdgeInsets.all(3.w),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.w),
                                    color: Colors.grey[200],
                                  ),
                                  child: Text(
                                    "Financé",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                "Yapi n'guessan.",
                                style: TextStyle(
                                  color: appBlack,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Pour manger",
                                style: TextStyle(
                                  color: appBlack,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              Gap(2.h),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "1.5%",
                                    style: TextStyle(
                                      color: appBlack,
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                  Text(
                                    "1 mois",
                                    style: TextStyle(
                                      color: appBlack,
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                  Text(
                                    "Risque A",
                                    style: TextStyle(
                                      color: appBlack,
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(3.w),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3.w),
                        color: appWhite,
                        border: Border.all(
                          color: Colors.grey,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ListTile(
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 0.0),
                            minVerticalPadding: 0.0,
                            horizontalTitleGap: 8.0,
                            title: Text(
                              "20 000 FCFA",
                              style: TextStyle(
                                color: appBlack,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            subtitle: Text(
                              "Montant demandé",
                              style: TextStyle(
                                color: appBlack,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            trailing: Container(
                              padding: EdgeInsets.all(3.w),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.w),
                                color: appColor.withValues(alpha: .3),
                              ),
                              child: Text(
                                "En cours",
                                style: TextStyle(
                                  color: appColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Text(
                            "Yapi n'guessan.",
                            style: TextStyle(
                              color: appBlack,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Pour manger",
                            style: TextStyle(
                              color: appBlack,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          Gap(2.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "1.5%",
                                style: TextStyle(
                                  color: appBlack,
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              Text(
                                "1 mois",
                                style: TextStyle(
                                  color: appBlack,
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              Text(
                                "Risque A",
                                style: TextStyle(
                                  color: appBlack,
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(3.w),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3.w),
                        color: appWhite,
                        border: Border.all(
                          color: Colors.grey,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ListTile(
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 0.0),
                            minVerticalPadding: 0.0,
                            horizontalTitleGap: 8.0,
                            title: Text(
                              "20 000 FCFA",
                              style: TextStyle(
                                color: appBlack,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            subtitle: Text(
                              "Montant demandé",
                              style: TextStyle(
                                color: appBlack,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            trailing: Container(
                              padding: EdgeInsets.all(3.w),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.w),
                                color: Colors.green[200],
                              ),
                              child: Text(
                                "Nouveau",
                                style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Text(
                            "Yapi n'guessan.",
                            style: TextStyle(
                              color: appBlack,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Pour manger",
                            style: TextStyle(
                              color: appBlack,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          Gap(2.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "1.5%",
                                style: TextStyle(
                                  color: appBlack,
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              Text(
                                "1 mois",
                                style: TextStyle(
                                  color: appBlack,
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              Text(
                                "Risque A",
                                style: TextStyle(
                                  color: appBlack,
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(3.w),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3.w),
                        color: appWhite,
                        border: Border.all(
                          color: Colors.grey,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ListTile(
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 0.0),
                            minVerticalPadding: 0.0,
                            horizontalTitleGap: 8.0,
                            title: Text(
                              "20 000 FCFA",
                              style: TextStyle(
                                color: appBlack,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            subtitle: Text(
                              "Montant demandé",
                              style: TextStyle(
                                color: appBlack,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            trailing: Container(
                              padding: EdgeInsets.all(3.w),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.w),
                                color: Colors.grey[200],
                              ),
                              child: Text(
                                "Financé",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Text(
                            "Yapi n'guessan.",
                            style: TextStyle(
                              color: appBlack,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Pour manger",
                            style: TextStyle(
                              color: appBlack,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          Gap(2.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "1.5%",
                                style: TextStyle(
                                  color: appBlack,
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              Text(
                                "1 mois",
                                style: TextStyle(
                                  color: appBlack,
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              Text(
                                "Risque A",
                                style: TextStyle(
                                  color: appBlack,
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                        ],
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
