import 'package:flutter/material.dart';
import 'package:flutter_responsive_app/core/constants.dart';
import 'package:flutter_responsive_app/home/home_feat.dart';

class DashboradScreen extends StatelessWidget {
  const DashboradScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            const Header(),
            const SizedBox(height: defaultPadding),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Container(height: 500, color: Colors.white),
                ),
                const SizedBox(width: defaultPadding),
                const Expanded(
                  flex: 2,
                  child: StorageDetails(),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
