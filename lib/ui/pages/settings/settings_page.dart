import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final heightOfDevice = MediaQuery.of(context).size.height;
    final widthOfDevice = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _TopBarWidget(),
              Container(
                  color: Colors.black12,
                  height: 40,
                  constraints: BoxConstraints(
                      maxHeight: 40,
                      minHeight: 40,
                      maxWidth: widthOfDevice,
                      minWidth: widthOfDevice),
                  alignment: Alignment.bottomLeft,
                  padding: EdgeInsets.only(bottom: 5, left: 10),
                  child: Text('Main')),
              MainSettingsWidget(),
              Container(
                  color: Colors.black12,
                  height: 40,
                  constraints: BoxConstraints(
                      maxHeight: 40,
                      minHeight: 40,
                      maxWidth: widthOfDevice,
                      minWidth: widthOfDevice),
                  alignment: Alignment.bottomLeft,
                  padding: EdgeInsets.only(bottom: 5, left: 10),
                  child: Text('Premium')),
              PremiumSettingsWidget(),
            ],
          ),
          Container(
            width: double.infinity,
            color: Colors.black12,
            child: Column(
              children: const [
                Padding(
                  padding: EdgeInsets.only(top: 18, bottom: 20),
                  child: SubscribeButtonWidget(),
                ),
                SendReviewButtonWidget(),
                Padding(
                  padding: EdgeInsets.only(bottom: 20, top: 10),
                  child: RateInAppStoreButtonWidget(),
                ),
              ],
            ),
          ),
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
        maximumSize: MaterialStateProperty.all(
          const Size(400, 45),
        ),
        // shape: MaterialStateProperty.all(
        //     RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
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
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          TextButton(
            onPressed: () {},
            child: Row(
              children: [
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
          Divider(),
          TextButton(
            onPressed: () {},
            child: Row(
              children: [
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
          Divider(),
          TextButton(
            onPressed: () {},
            child: Row(
              children: [
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
          Divider(),
          TextButton(
            onPressed: () {},
            child: Row(
              children: [
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
      ),
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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextButton(
          onPressed: () {},
          child: Row(
            children: [
              Text('Currency'),
              Expanded(
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
        Divider(),
        TextButton(
          onPressed: () {},
          child: Row(
            children: [
              Text('Appearance'),
              Expanded(
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
        Divider(),
        TextButton(
          onPressed: () {},
          child: Row(
            children: [
              Text('Additionally'),
              Expanded(
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
