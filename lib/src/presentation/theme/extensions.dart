import 'package:flutter/material.dart';
import 'package:prof26_uikit/prof26_uikit.dart';

class CustomTheme extends ThemeExtension<CustomTheme> {
  final Palette palette;
  final Styles style = Styles();

  CustomTheme({required this.palette});

  @override
  ThemeExtension<CustomTheme> copyWith() {
    return CustomTheme(palette: palette);
  }

  @override
  ThemeExtension<CustomTheme> lerp(
    covariant ThemeExtension<CustomTheme>? other,
    double t,
  ) {
    return this;
  }

  static CustomTheme of(BuildContext context) =>
      Theme.of(context).extension<CustomTheme>()!;
}
