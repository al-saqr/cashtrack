import 'package:cashtrack/routes/routes.dart';

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        canvasColor: Colors.red.shade300,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.red.shade300,
        ),
      ),
      routes: routes,
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
      title: 'Material App',
    );
  }
}
