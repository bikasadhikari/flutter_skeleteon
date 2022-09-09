//this file contains the navigation drawer widget with custom links
//created by Bikas Adhikari on 05-08-2022

import 'package:flutter/material.dart';

typedef IntCallBack = Function(int index, int sub);

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Container(
              height: 70,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/teho.png'),
                ),
              ),
            ),
          ),
          const Divider(),
          ListTileTheme(
            child: ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ),
          const Divider(),
        ],
      ),
    );
  }
}
