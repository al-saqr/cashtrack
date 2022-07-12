import 'package:flutter/material.dart';

class MonthlyTabPage extends StatelessWidget {
  const MonthlyTabPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
                r'$ 25 000 000',
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
        Flexible(
          child: ListView.separated(
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
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
              );
            },
            itemCount: 10,
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(
                height: 25,
              );
            },
          ),
        )
      ],
    );
  }
}
