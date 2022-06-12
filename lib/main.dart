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
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.red.shade300,
            title: const Center(
              child: Text(
                'Accounts',
              ),
            ),
            leading: IconButton(
              alignment: Alignment.centerLeft,
              onPressed: () {},
              icon: const Icon(Icons.settings),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.add),
              ),
            ],
            bottom: const TabBar(
              tabs: [
                Tab(text: 'DAILY'),
                Tab(text: 'WEEKLY'),
                Tab(text: 'MONTHLY'),
                Tab(text: 'YEARLY'),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              Center(child: Text('DAILY')),
              Center(child: Text('WEEKLY')),
              Center(child: Text('MONTHLY')),
              Center(child: Text('YEARLY')),
            ],
          ),
        ),
      ),
    );
  }
}
