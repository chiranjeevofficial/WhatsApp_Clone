import 'package:flutter/material.dart';
import 'package:whatsapp_messanger/common/theme/dark_theme.dart';
import 'package:whatsapp_messanger/common/theme/light_theme.dart';
import 'package:whatsapp_messanger/feature/welcome/pages/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whatsapp',
      theme: lightTheme(),
      darkTheme: darkTheme(),
      themeMode: ThemeMode.system,
      home: const WelcomePage(),
    );
  }
}
