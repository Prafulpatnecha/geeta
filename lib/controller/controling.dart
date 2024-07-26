import 'package:flutter/material.dart';
import 'package:geeta/controller/routes.dart';

import '../utils/theme_state_change.dart';



class MyGeeta extends StatelessWidget {
  const MyGeeta({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeStateChange.themeLight,
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      initialRoute: '/view',
      routes: AppRoutes.routes,
    );
  }
}
