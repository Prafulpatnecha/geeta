import 'package:flutter/material.dart';
import 'package:geeta/controller/routes.dart';


class MyGeeta extends StatelessWidget {
  const MyGeeta({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: AppRoutes.routes,
    );
  }
}
