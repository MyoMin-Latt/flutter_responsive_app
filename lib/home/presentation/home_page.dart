import 'package:flutter/material.dart';
import 'package:flutter_responsive_app/home/application/menu_icon_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../home_feat.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      key: ref.watch(menuIconControllerProvider).scaffoldKey,
      drawer: const AppDrawer(),
      body: const Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(child: AppDrawer()),
          Expanded(flex: 5, child: DashboradScreen()),
        ],
      ),
    );
  }
}
