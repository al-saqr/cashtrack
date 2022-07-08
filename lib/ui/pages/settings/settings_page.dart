import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 45,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                ),
                Positioned(
                  top: 13,
                  right: 10,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Save',
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 13,
                  left: 10,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Cancel',
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 13,
                  left: MediaQuery.of(context).size.width / 2.5,
                  child: const Text(
                    'Settings',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Container(
              color: Colors.grey.shade300,
              height: 45,
              width: double.infinity,
              child: Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(
                      left: 10,
                      top: 20,
                    ),
                    child: Text(
                      'Main',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.grey),
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              color: Colors.blue,
              child: Column(
                children: [
                  Row(
                    children: [],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
