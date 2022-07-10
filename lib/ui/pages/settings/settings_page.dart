import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const TopBarWidget(),
          Flexible(
            flex: 3,
            child: Container(
              child: Column(
                children: [
                  Flexible(
                    child: Row(
                      children: [
                        Expanded(
                            flex: 1,
                            child: Container(color: Colors.transparent)),
                        Text('Currency'),
                        Expanded(
                          flex: 10,
                          child: Container(
                            color: Colors.transparent,
                          ),
                        ),
                        Text('USD'),
                        Icon(
                          Icons.chevron_right,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    child: Container(
                      color: Colors.grey,
                    ),
                  ),
                  Flexible(
                    child: Container(
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Flexible(
            child: Container(color: Colors.green),
            flex: 3,
          ),
          Flexible(child: Container(color: Colors.orange)),
        ],
      ),
    );
  }
}

class TopBarWidget extends StatelessWidget {
  const TopBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        height: double.infinity,
        color: Colors.white,
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: TextButton(
                onPressed: () {},
                child: const Text('Cancel'),
              ),
            ),
            const Expanded(
              flex: 3,
              child: Text(
                textAlign: TextAlign.center,
                'Settings',
              ),
            ),
            Expanded(
              flex: 1,
              child: TextButton(
                onPressed: () {},
                child: const Text('Save'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
