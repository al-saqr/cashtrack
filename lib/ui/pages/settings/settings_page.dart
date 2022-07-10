import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final heightOfDevice = MediaQuery.of(context).size.height;
    final widthOfDevice = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: const [
          TopBarWidget(),
          Text('Main'),
          MainSettingsWidget(),
          Text('Premium'),
          PremiumSettingsWidget(),
          SubscribeButtonWidget(),
          SendReviewButtonWidget(),
          RateInAppStoreButtonWidget(),
        ],
      ),
    );
  }
}

class RateInAppStoreButtonWidget extends StatelessWidget {
  const RateInAppStoreButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.black12),
        minimumSize: MaterialStateProperty.all(
          const Size(300, 45),
        ),
      ),
      child: Text('Rate in App Stpre'),
    );
  }
}

class SendReviewButtonWidget extends StatelessWidget {
  const SendReviewButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.black12),
        minimumSize: MaterialStateProperty.all(
          const Size(300, 45),
        ),
      ),
      child: Text('Send your review'),
    );
  }
}

class SubscribeButtonWidget extends StatelessWidget {
  const SubscribeButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.green),
        minimumSize: MaterialStateProperty.all(
          const Size(300, 45),
        ),
      ),
      child: Text('Subscribe'),
    );
  }
}

class PremiumSettingsWidget extends StatelessWidget {
  const PremiumSettingsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <TextButton>[
        TextButton(
          onPressed: () {},
          child: Row(
            children: [
              Expanded(flex: 1, child: Container(color: Colors.transparent)),
              Text('Icon set'),
              Expanded(
                flex: 10,
                child: Container(
                  color: Colors.transparent,
                ),
              ),
              Icon(
                Icons.paid_outlined,
                color: Colors.green,
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.transparent,
                ),
              )
            ],
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Row(
            children: [
              Expanded(flex: 1, child: Container(color: Colors.transparent)),
              Text('Backups'),
              Expanded(
                flex: 10,
                child: Container(
                  color: Colors.transparent,
                ),
              ),
              Icon(
                Icons.paid_outlined,
                color: Colors.green,
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.transparent,
                ),
              )
            ],
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Row(
            children: [
              Expanded(flex: 1, child: Container(color: Colors.transparent)),
              Text('Export'),
              Expanded(
                flex: 10,
                child: Container(
                  color: Colors.transparent,
                ),
              ),
              Icon(
                Icons.paid_outlined,
                color: Colors.green,
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.transparent,
                ),
              )
            ],
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Row(
            children: [
              Expanded(flex: 1, child: Container(color: Colors.transparent)),
              Text('Security'),
              Expanded(
                flex: 10,
                child: Container(
                  color: Colors.transparent,
                ),
              ),
              Icon(
                Icons.paid_outlined,
                color: Colors.green,
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.transparent,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class MainSettingsWidget extends StatelessWidget {
  const MainSettingsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () {},
          child: Row(
            children: [
              Expanded(flex: 1, child: Container(color: Colors.transparent)),
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
        TextButton(
          onPressed: () {},
          child: Row(
            children: [
              Expanded(flex: 1, child: Container(color: Colors.transparent)),
              Text('Appearance'),
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
        TextButton(
          onPressed: () {},
          child: Row(
            children: [
              Expanded(flex: 1, child: Container(color: Colors.transparent)),
              Text('Additionally'),
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
      ],
    );
  }
}

class TopBarWidget extends StatelessWidget {
  const TopBarWidget({
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
    );
  }
}
