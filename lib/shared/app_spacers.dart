import 'package:flutter/material.dart';

/// Contains useful consts to reduce boilerplate and duplicate code
abstract class AppSpacers {
  // Vertical spacing constants. Adjust to your liking.
  static final double _verticalSpaceMinimum = 4.0;
  static final double _verticalSpaceSmall = 8.0;
  static final double _verticalSpaceMedium = 16.0;
  static final double _verticalSpaceLarge = 64.0;

  // Vertical spacing constants. Adjust to your liking.
  static final double _horizontalSpaceMinimum = 4.0;

  static final double _horizontalSpaceSmall = 8.0;
  static final double _horizontalSpaceMedium = 16.0;
  static final double _horizontalSpaceLarge = 64.0;
  static final double _horizontalSpaceEditPages = 40.0;

  static final Widget verticalSpaceMinimum =
      SizedBox(height: _verticalSpaceMinimum);

  static final Widget verticalSpaceSmall =
      SizedBox(height: _verticalSpaceSmall);
  static final Widget verticalSpaceMedium =
      SizedBox(height: _verticalSpaceMedium);
  static final Widget verticalSpaceLarge =
      SizedBox(height: _verticalSpaceLarge);

  static final Widget horizontalSpaceMinimum =
      SizedBox(height: _horizontalSpaceMinimum);
  static final Widget horizontalSpaceSmall =
      SizedBox(width: _horizontalSpaceSmall);
  static final Widget horizontalSpaceMedium =
      SizedBox(width: _horizontalSpaceMedium);
  static final Widget horizontalSpaceLarge =
      SizedBox(width: _horizontalSpaceLarge);
  static final Widget horizontalSpaceEditPages =
      SizedBox(width: _horizontalSpaceEditPages);
}
