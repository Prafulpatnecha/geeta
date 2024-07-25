import 'package:flutter/material.dart';
import 'package:geeta/view/home/bookmark_screen/bookmark_page.dart';

import '../view/home/homepage.dart';
import '../view/home/show_screen/show_page.dart';

class AppRoutes
{
  static Map<String, Widget Function(BuildContext)> routes={
    '/':(context)=>const HomePage(),
    '/show':(context)=>const ShowPage(),
    '/book':(context)=>const BookmarkPage(),
  };
}