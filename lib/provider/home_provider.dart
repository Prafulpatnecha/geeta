import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geeta/modal/home_modal.dart';
import 'package:geeta/utils/list_modal.dart';

class HomeProvider extends ChangeNotifier
{
  List<ListModal> addList=[];
  late int selectIndex;
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
  void selectFuntion(int index)
  {
    selectIndex=index;
    notifyListeners();
  }
  void addListFuntion(int valueIndex)
  {
    addList.add(ListModal(index1: selectIndex, index2: valueIndex));
  }
}