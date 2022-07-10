import 'package:cashtrack/ui/pages/income_and_expense/income_and_expense.dart';
import 'package:cashtrack/ui/pages/main/main_page.dart';
import 'package:flutter/material.dart';

import '../ui/pages/settings/settings_page.dart';

Map<String, WidgetBuilder> routes = {
  '/': (context) => const MainPage(),
  '/settings': (context) => const SettingsPage(),
  '/income_and_expense': (context) => const IncomeAndExpensePage(),
};
