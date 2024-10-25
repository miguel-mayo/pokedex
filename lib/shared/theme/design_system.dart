import 'package:flutter/material.dart';

class Spacing {
  static const double xxs = 4.0;
  static const double xs = 8.0;
  static const double s = 16.0;
  static const double m = 24.0;
  static const double l = 32.0;
  static const double xl = 40.0;
  static const double xxl = 48.0;
}

class BorderSize {
  static const double s = 1.0;
  static const double m = 2.0;
  static const double l = 4.0;
}

class BorderRadiusSize {
  static const double s = 4.0;
  static const double m = 8.0;
  static const double l = 16.0;
  static const double xl = 24.0;
}

class Separator {
  static const xxs = SizedBox(height: Spacing.xxs);
  static const xs = SizedBox(height: Spacing.xs);
  static const s = SizedBox(height: Spacing.s);
  static const m = SizedBox(height: Spacing.m);
  static const l = SizedBox(height: Spacing.l);
  static const xl = SizedBox(height: Spacing.xl);
  static const xxl = SizedBox(height: Spacing.xxl);

  static const horizontalxxs = SizedBox(width: Spacing.xxs);
  static const horizontalxs = SizedBox(width: Spacing.xs);
  static const horizontals = SizedBox(width: Spacing.s);
  static const horizontalm = SizedBox(width: Spacing.m);
  static const horizontall = SizedBox(width: Spacing.l);
  static const horizontalxl = SizedBox(width: Spacing.xl);
  static const horizontalxxl = SizedBox(width: Spacing.xxl);
}
