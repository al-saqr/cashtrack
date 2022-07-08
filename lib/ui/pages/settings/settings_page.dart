import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Settings',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        leading: TextButton(
          onPressed: () {},
          child: const Text(
            style: TextStyle(
                color: Color.fromARGB(255, 55, 199, 175),
                fontWeight: FontWeight.bold),
            'Cancel',
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(
              'Save',
              style: TextStyle(
                color: Colors.green,
              ),
            ),
          ),
        ],
      ),
      body: Container(
        color: Colors.transparent,
      ),
    );
  }
}
