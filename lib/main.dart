import 'package:flutter/material.dart';
import 'package:geeta/provider/home_provider.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'controller/controling.dart';
List<String> addingList=[];
bool theme=false;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences sharedPreferences=await SharedPreferences.getInstance();
  theme=sharedPreferences.getBool('theme') ?? false;
  addingList=sharedPreferences.getStringList('bookMark') ?? [];
  runApp(
    MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => HomeProvider())],
      builder: (context, child) => const MyGeeta(),
    ),
  );
}
