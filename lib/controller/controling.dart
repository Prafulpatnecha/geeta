import 'package:flutter/material.dart';
import 'package:geeta/controller/routes.dart';
import 'package:geeta/provider/home_provider.dart';
import 'package:provider/provider.dart';

import '../utils/theme_state_change.dart';



class MyGeeta extends StatelessWidget {
  const MyGeeta({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeStateChange.themeLight,
      darkTheme: ThemeStateChange.themeDark,
      themeMode: (!Provider.of<HomeProvider>(context).isDark)?ThemeMode.light:ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      initialRoute: '/view',
      routes: AppRoutes.routes,
    );
  }
}
