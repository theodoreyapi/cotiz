import 'package:cotiz/src/themes/themes.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';

class StatePage extends StatefulWidget {
  const StatePage({super.key});

  @override
  State<StatePage> createState() => _StatePageState();
}

class _StatePageState extends State<StatePage> {
  final List<String> filters = ['1D', '1W', '1M', '1Y', '5Y', 'All'];
  int selectedIndex = 0;

  String get selectedLabel {
    switch (filters[selectedIndex]) {
      case '1D':
        return "Aujourd'hui";
      case '1W':
        return "Cette semaine";
      case '1M':
        return "Juillet 2025";
      case '1Y':
        return "2025";
      case '5Y':
        return "2020 - 2025";
      case 'All':
        return "Toutes mes opérations";
      default:
        return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColorFond,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(4.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(3.w),
                      ),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: filters.length,
                        itemBuilder: (context, index) {
                          bool isSelected = selectedIndex == index;
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedIndex = index;
                              });
                            },
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 7),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 8),
                              decoration: BoxDecoration(
                                color: isSelected
                                    ? appWhite
                                    : Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(3.w),
                              ),
                              child: Center(
                                child: Text(
                                  filters[index],
                                  style: TextStyle(
                                    color: isSelected ? appBlack : Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    Gap(2.h),
                    Text(
                      "Dépenses . $selectedLabel ",
                      style: TextStyle(
                        color: appBlack,
                        fontSize: 17.sp,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Text(
                      "500 000 XOF",
                      style: TextStyle(
                        color: appBlack,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Gap(2.h),
                  ],
                ),
              ),
              SizedBox(
                height: 50.h,
                child: LineChart(
                  LineChartData(
                    gridData: FlGridData(
                      show: false,
                    ),
                    titlesData: FlTitlesData(
                      bottomTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: true,
                          reservedSize: 32,
                          interval: 1,
                          getTitlesWidget: (value, meta) {
                            const months = [
                              'Jan',
                              'Feb',
                              'Mar',
                              'Apr',
                              'May',
                              'Jun',
                              'Jul',
                              'Aug',
                              'Sep',
                              'Oct',
                              'Nov',
                              'Dec'
                            ];
                            if (value >= 0 && value < months.length) {
                              return Text(
                                months[value.toInt()],
                                style: TextStyle(
                                  color: appGrey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              );
                            } else {
                              return const SizedBox.shrink();
                            }
                          },
                        ),
                      ),
                      leftTitles: AxisTitles(
                        sideTitles: SideTitles(showTitles: false),
                      ),
                      topTitles: AxisTitles(
                        sideTitles: SideTitles(showTitles: false),
                      ),
                      rightTitles: AxisTitles(
                        sideTitles: SideTitles(showTitles: false),
                      ),
                    ),
                    lineBarsData: [
                      LineChartBarData(
                        isCurved: true,
                        color: appColor,
                        barWidth: 2,
                        belowBarData: BarAreaData(
                          show: true,
                          color: appColor.withValues(alpha: 0.1),
                        ),
                        spots: [
                          FlSpot(0, 2000),
                          FlSpot(1, 3000),
                          FlSpot(2, 5000),
                          FlSpot(3, 4000),
                          FlSpot(4, 3500),
                          FlSpot(5, 3800),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(4.w),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Transactions",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Text(
                            "Voir tout",
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              color: appBlack,
                            ),
                          ),
                        ),
                      ],
                    ),
                    ListView(
                      shrinkWrap: true,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: appWhite,
                            borderRadius: BorderRadius.circular(3.w),
                          ),
                          child: ListTile(
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 0.0),
                            minVerticalPadding: 0.0,
                            horizontalTitleGap: 8.0,
                            leading: Container(
                              padding: EdgeInsets.all(3.w),
                              decoration: BoxDecoration(
                                color: Colors.green.withValues(alpha: .3),
                                borderRadius: BorderRadius.circular(3.w),
                              ),
                              child: Icon(
                                Icons.arrow_downward_outlined,
                                color: Colors.green,
                              ),
                            ),
                            title: Text("Recharger"),
                            subtitle: Text(
                              "26 Juin 2025",
                              style: TextStyle(color: appGrey),
                            ),
                            trailing: Text(
                              "+150 000 FCFA",
                              style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Gap(1.h),
                        Container(
                          decoration: BoxDecoration(
                            color: appWhite,
                            borderRadius: BorderRadius.circular(3.w),
                          ),
                          child: ListTile(
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 0.0),
                            minVerticalPadding: 0.0,
                            horizontalTitleGap: 8.0,
                            leading: Container(
                              padding: EdgeInsets.all(3.w),
                              decoration: BoxDecoration(
                                color: Colors.red.withValues(alpha: .3),
                                borderRadius: BorderRadius.circular(3.w),
                              ),
                              child: Icon(
                                Icons.arrow_upward_outlined,
                                color: Colors.red,
                              ),
                            ),
                            title: Text("Transfert"),
                            subtitle: Text(
                              "28 Juin 2025",
                              style: TextStyle(
                                color: appGrey,
                              ),
                            ),
                            trailing: Text(
                              "-10 000 FCFA",
                              style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
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
      ),
    );
  }
}
