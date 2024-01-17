import 'package:flutter/material.dart';
import 'package:whatsapp_messanger/common/extension/custom_theme_extension.dart';
import 'package:whatsapp_messanger/common/utils/coloors.dart';

ThemeData lightTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    colorScheme: base.colorScheme.copyWith(
      background: Coloors.backgroundLight,
    ),
    extensions: [
      CustomThemeExtension.darkMode,
    ],
    scaffoldBackgroundColor: Coloors.backgroundLight,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Coloors.greenLight,
        foregroundColor: Coloors.backgroundLight,
        splashFactory: NoSplash.splashFactory,
        elevation: 0,
        shadowColor: Colors.transparent,
      )
    ),
  );
}
