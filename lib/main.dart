import 'package:carousel_slider/carousel_slider.dart';
import 'package:cashtrack/carousel_with_indicator.dart';
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
  int _current = 0;
  final CarouselController _controller = CarouselController();

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
              Container(
                color: Colors.red.shade300,
                child: Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: 100,
                      child: Column(
                        children: const [
                          Text(
                            'Balance',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white60,
                            ),
                          ),
                          Text(
                            '\$ 25 000 000',
                            style: TextStyle(
                              fontSize: 42,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            '% 5',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white60,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 6.0,
                        horizontal: 12.0,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: Colors.white),
                        child: ListTile(
                          minVerticalPadding: 8.0,
                          dense: true,
                          title: const Text(
                            'Credit card',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black45),
                          ),
                          subtitle: Text(
                            '\$ 532',
                            style: TextStyle(
                              height: 2,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.red.shade300,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const Center(child: Text('YEARLY')),
            ],
          ),
        ),
      ),
    );
  }
}
