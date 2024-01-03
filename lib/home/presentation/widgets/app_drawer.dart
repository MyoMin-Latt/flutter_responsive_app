import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: const RoundedRectangleBorder(),
      width: 250,
      child: ListView(
        children: [
          const DrawerHeader(
              child: Center(
            child: Icon(
              Icons.heart_broken,
              size: 50,
            ),
          )),
          ListTile(
            title: const Text('Home'),
            trailing: const Icon(Icons.home),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: const Text('Pserson'),
            trailing: const Icon(Icons.person),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: const Text('School'),
            trailing: const Icon(Icons.build_outlined),
            onTap: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }
}
