import 'package:flutter/material.dart';
import 'package:flutter_responsive_app/core/core_extension.dart';
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
      body: Row(
        children: [
          if (context.isDesktop) const Expanded(flex: 2, child: AppDrawer()),
          Expanded(
            flex: 9,
            child: Column(
              children: [
                const Header(),
                const SizedBox(height: 2),
                Expanded(
                    child: Container(
                  color: Colors.amber,
                  child: Row(
                    children: [
                      // main body
                      Expanded(
                        flex: 10,
                        child: Container(
                          margin: const EdgeInsets.only(left: 4),
                          color: Colors.grey[200],
                          child: Column(
                            children: [
                              Expanded(
                                flex: 2,
                                child: GridView.builder(
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 4),
                                  itemCount: 4,
                                  itemBuilder: (context, index) => Container(
                                    color: Colors.greenAccent,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 7,
                                child: Column(
                                  children: [
                                    Container(
                                      color: Colors.blueGrey,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),

                      // side
                      Expanded(
                        flex: 3,
                        child: Container(
                          margin: const EdgeInsets.only(left: 4, right: 4),
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
