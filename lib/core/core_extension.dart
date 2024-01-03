import 'package:flutter/material.dart';

extension ContextX on BuildContext {
  Size get devSize => MediaQuery.of(this).size;

  bool get isMobile => devSize.width < 850;
  bool get isTablet => devSize.width < 1100 && devSize.width >= 850;
  bool get isDesktop => devSize.width >= 1100;
}
