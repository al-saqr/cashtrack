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
                Tab(text: 'tab1'),
                Tab(text: 'Tab2'),
                Tab(text: 'tab3'),
                Tab(text: 'tab4'),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              Center(child: Text('tab1')),
              Center(child: Text('tab2')),
              Center(child: Text('tab3')),
              Center(child: Text('tab4')),
            ],
          ),
        ),
      ),
    );
  }
}
