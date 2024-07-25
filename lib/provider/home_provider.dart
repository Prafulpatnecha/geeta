import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geeta/modal/home_modal.dart';

class HomeProvider extends ChangeNotifier
{
  List<GeetaModal> geetaList=[];
  Future<void> initState()
  async {
    String json=await rootBundle.loadString('assets/json/four_language.json');
    List geetaJson=jsonDecode(json);
    geetaList=geetaJson.map((e) => GeetaModal.fromJson(e),).toList();
    notifyListeners();
  }
  HomeProvider()
  {
    initState();
  }
  String geetaFuntion()
  {
    String geetaString= geetaList[0].o1.hindi[10];
    // if(geetaString[0]==' ')
    // {
    print(geetaString[5]+'jfbv');

    // }
    return geetaString;
  }
}