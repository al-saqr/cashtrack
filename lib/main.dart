import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final widgets = [
    '1',
    '3232',
    '434343',
    'asdasds',
    'adasdsa',
    'asdsasda',
    'dasdsa',
    'asdsad',
    'asdsad',
  ];

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
                Tab(
                  text: 'DAILY',
                ),
                Tab(text: 'WEEKLY'),
                Tab(text: 'MONTHLY'),
                Tab(text: 'YEARLY'),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              const Center(child: Text('DAILY')),
              const Center(child: Text('WEEKLY')),
              ListView(
                children: [
                  CarouselSlider(
                    options: CarouselOptions(),
                    items: const [
                      Text('data'),
                      Text('data1'),
                    ],
                  ),
                  Column(
                    children: [
                      Text('data'),
                    ],
                  ),
                  Text('data'),
                  Text('data'),
                  Text('data'),
                  Text('data'),
                  Text('data'),
                ],
              ),
              const Center(child: Text('YEARLY')),
            ],
          ),
        ),
      ),
    );
  }
}
