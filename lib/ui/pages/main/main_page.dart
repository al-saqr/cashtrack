import 'package:flutter/material.dart';

import '../../widgets/buttons.dart';
import '../../widgets/tabs.dart';
import './daily/daily_tab.dart';
import './weekly/weekly_tab.dart';
import './yearly/yearly_tab.dart';
import './monthly/monthly_tab.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 2,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              'Accounts',
            ),
          ),
          leading: IconButton(
            alignment: Alignment.centerLeft,
            onPressed: () => Navigator.of(context).pushNamed('/settings'),
            icon: const Icon(Icons.settings),
          ),
          actions: actionsList,
          bottom: const TabBar(
            isScrollable: true,
            indicatorColor: Colors.white,
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
    );
  }
}
