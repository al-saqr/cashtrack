import 'package:cashtrack/routes/routes.dart';

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        canvasColor: Color(0xFFF8777D),
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFFF8777D),
        ),
      ),
      routes: routes,
      initialRoute: '/settings',
      debugShowCheckedModeBanner: false,
      title: 'Material App',
    );
  }
}
