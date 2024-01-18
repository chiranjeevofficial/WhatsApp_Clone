import 'package:flutter/material.dart';
import 'package:whatsapp_messanger/common/theme/dark_theme.dart';
import 'package:whatsapp_messanger/common/theme/light_theme.dart';
import 'package:whatsapp_messanger/feature/auth/pages/user_info_page.dart';
// import 'package:whatsapp_messanger/feature/auth/pages/verification_page.dart';
// import 'package:whatsapp_messanger/feature/auth/pages/login_page.dart';
// import 'package:whatsapp_messanger/feature/welcome/pages/welcome_page.dart';

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
      home: const UserInfoPage(),
    );
  }
}
