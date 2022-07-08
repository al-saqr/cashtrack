import 'package:cashtrack/ui/pages/daily/daily_tab.dart';
import 'package:cashtrack/ui/pages/monthly/monthly_tab.dart';
import 'package:cashtrack/ui/pages/weekly/weekly_tab.dart';
import 'package:cashtrack/ui/pages/yearly/yearly_tab.dart';
import 'package:cashtrack/ui/widgets/buttons.dart';
import 'package:cashtrack/ui/widgets/tabs.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: DefaultTabController(
        initialIndex: 2,
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.red.shade300,
            title: const Center(
              child: Text(
                'Accounts',
              ),
            ),
            leading: settingsIcon,
            actions: actionsList,
            bottom: const TabBar(
              tabs: tabs,
            ),
          ),
          body: const TabBarView(
            children: <Widget>[
              DailyTabPage(),
              WeeklyTabPage(),
              MonthlyTabPage(),
              YearlyTabPage(),
            ],
          ),
        ),
      ),
    );
  }
}
