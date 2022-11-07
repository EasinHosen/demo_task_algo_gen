import 'package:demo/pages/text_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  static const String routeName = '/home_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('Alert dialog'),
              onPressed: () => showConfirmation(context, 'Alert dialog'),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              child: const Text('Text page'),
              onPressed: () => Navigator.pushNamed(context, TextPage.routeName),
            ),
          ],
        ),
      ),
    );
  }

  Future<bool?> showConfirmation(BuildContext context, String title) async {
    return await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(title),
        // content: const Text('Are you sure?'),
        content: setupAlertDialogContainer(),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context, false);
              print('No');
            },
            child: const Text('no'),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context, true);
              print('Yes');
            },
            child: const Text('yes'),
          ),
        ],
      ),
    );
  }

  Widget setupAlertDialogContainer() {
    return SizedBox(
      height: double.maxFinite,
      width: double.maxFinite,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 100,
        itemBuilder: (context, index) {
          return const ListTile(
            title: Text('Are you sure?'),
          );
        },
      ),
    );
  }
}
