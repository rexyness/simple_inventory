import 'package:flutter/material.dart';

import '../core/hex_color.dart';
import 'palette.dart';

class CustomTheme {
  static ThemeData darkTheme(BuildContext context) {
    final theme = Theme.of(context);
    return ThemeData(
      visualDensity: VisualDensity.adaptivePlatformDensity,
      colorScheme: ColorScheme.fromSwatch(
        brightness: Brightness.dark,
        primarySwatch: MaterialColor(
          Palette.red500.value,
          const {
            100: Palette.red100,
            200: Palette.red200,
            300: Palette.red300,
            400: Palette.red400,
            500: Palette.red500,
            600: Palette.red600,
            700: Palette.red700,
            800: Palette.red800,
            900: Palette.red900,
          },
        ),
        accentColor: Palette.red500,
      ),
      scaffoldBackgroundColor: HexColor.fromHex("#1E1E20"),
      cardTheme: const CardTheme(color: Palette.red500),
      appBarTheme: AppBarTheme(
        elevation: 0,
        color: HexColor.fromHex('#4E4E54'),
      ),
      sliderTheme: SliderThemeData(
        activeTrackColor: Colors.white,
        inactiveTrackColor: Colors.grey.shade800,
        thumbColor: Colors.white,
        valueIndicatorColor: Palette.red500,
        inactiveTickMarkColor: Colors.transparent,
        activeTickMarkColor: Colors.transparent,
      ),
      textTheme: theme.primaryTextTheme
          .copyWith(
            button: theme.primaryTextTheme.button?.copyWith(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          )
          .apply(
            displayColor: Colors.white,
          ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          backgroundColor: Palette.red500,
        ),
      ),
    );
  }

  static ThemeData lightTheme(BuildContext context) {
    final theme = Theme.of(context);
    return ThemeData(
      visualDensity: VisualDensity.adaptivePlatformDensity,
      colorScheme: ColorScheme.fromSwatch(
        brightness: Brightness.light,
        primarySwatch: MaterialColor(
          Palette.red500.value,
          const {
            100: Palette.red100,
            200: Palette.red200,
            300: Palette.red300,
            400: Palette.red400,
            500: Palette.red500,
            600: Palette.red600,
            700: Palette.red700,
            800: Palette.red800,
            900: Palette.red900,
          },
        ),
        accentColor: Palette.red500,
      ),
      scaffoldBackgroundColor: Colors.white,
      cardTheme: const CardTheme(color: Palette.red500),
      appBarTheme: AppBarTheme(
          elevation: 0,
          color: Colors.white,
          titleTextStyle: Theme.of(context).textTheme.headline6!.copyWith(color: Palette.almostBlack),
          iconTheme: IconTheme.of(context).copyWith(color: Palette.almostBlack)),
      sliderTheme: SliderThemeData(
        activeTrackColor: Palette.almostBlack,
        inactiveTrackColor: Colors.grey.shade800,
        thumbColor: Colors.black,
        valueIndicatorColor: Palette.red500,
        inactiveTickMarkColor: Colors.transparent,
        activeTickMarkColor: Colors.transparent,
      ),
      textTheme: theme.primaryTextTheme
          .apply(displayColor: Palette.almostBlack, bodyColor: Palette.almostBlack)
          .copyWith(
            button: theme.primaryTextTheme.button?.copyWith(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          )
          .apply(
            displayColor: Palette.almostBlack,
          ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          backgroundColor: Palette.red500,
        ),
      ),
    );
  }
}
