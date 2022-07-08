import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leadingWidth: 70,
        leading: TextButton(
            onPressed: () {},
            child: Text(
              style: TextStyle(
                  color: Colors.green.shade500, fontWeight: FontWeight.bold),
              'Cancel',
            )),
      ),
      body: Container(
        color: Colors.black,
      ),
    );
  }
}
