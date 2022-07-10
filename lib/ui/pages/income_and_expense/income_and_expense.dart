import 'package:flutter/material.dart';

class IncomeAndExpensePage extends StatelessWidget {
  const IncomeAndExpensePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isChanged = true;
    return Scaffold(
      body: Column(
        children: [
          _TopBarWidget(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Switch(
                value: isChanged,
                onChanged: (isChanged) => !isChanged,
                activeColor: Colors.white,
                inactiveThumbColor: Colors.red.shade300,
                activeTrackColor: Colors.cyanAccent,
              ),
              Expanded(child: Text('.')),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    width: 300,
                    height: 60,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.end,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Text('Settings', textAlign: TextAlign.start),
          _SettingsWidget(),
          TextField(
            minLines: 1,
            maxLines: 5,
            decoration: InputDecoration(
              labelText: 'Notes',
            ),
          ),
        ],
      ),
    );
  }
}

class _SettingsWidget extends StatelessWidget {
  const _SettingsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          TextButton(
            onPressed: () {},
            child: Row(
              children: [
                Expanded(flex: 1, child: Container(color: Colors.transparent)),
                Text('Category'),
                Expanded(
                  flex: 10,
                  child: Container(
                    color: Colors.transparent,
                  ),
                ),
                Text('Food & Restaurants'),
                Icon(
                  Icons.chevron_right,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Row(
              children: [
                Expanded(flex: 1, child: Container(color: Colors.transparent)),
                Text('Date'),
                Expanded(
                  flex: 10,
                  child: Container(
                    color: Colors.transparent,
                  ),
                ),
                Text('Today'),
                Icon(
                  Icons.chevron_right,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Row(
              children: [
                Expanded(flex: 1, child: Container(color: Colors.transparent)),
                Text('Account'),
                Expanded(
                  flex: 10,
                  child: Container(
                    color: Colors.transparent,
                  ),
                ),
                Text('Cash'),
                Icon(
                  Icons.chevron_right,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Row(
              children: [
                Expanded(flex: 1, child: Container(color: Colors.transparent)),
                Text('Transfert to Account'),
                Expanded(
                  flex: 10,
                  child: Container(
                    color: Colors.transparent,
                  ),
                ),
                Text('Optional'),
                Icon(
                  Icons.chevron_right,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _TopBarWidget extends StatelessWidget {
  const _TopBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 5, right: 5, top: 12),
      width: double.infinity,
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
              'Expense',
            ),
          ),
          Expanded(
            flex: 1,
            child: TextButton(
              onPressed: () {},
              child: const Text('Done'),
            ),
          ),
        ],
      ),
    );
  }
}
