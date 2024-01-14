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
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            Header(),
            Row(
              children: [
                Expanded(
                  flex: 5,
                  child: Container(
                    color: Colors.white,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.blue,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
