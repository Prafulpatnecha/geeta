import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geeta/main.dart';
import 'package:geeta/modal/home_modal.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeProvider extends ChangeNotifier
{
  bool isDark=false;
  // List<ListModal> addList=[];
  List<String> addList=[];
  late int selectIndex;
  List<GeetaModal> geetaList=[];
  void modeTheme(bool value)
  {
    isDark=value;
    setTheme(isDark);
    notifyListeners();
  }
  Future<void> setTheme(bool value)
  async {
    SharedPreferences sharedPreferences=await SharedPreferences.getInstance();
    sharedPreferences.setBool('theme', value);
    notifyListeners();
  }
  Future<void> getTheme()
  async {
    SharedPreferences sharedPreferences=await SharedPreferences.getInstance();
    isDark=sharedPreferences.getBool('theme') ?? false;
    notifyListeners();
  }
  HomeProvider()
  {
    addList=addingList.toList();
    isDark=theme;
    shareMobileGet();
    getTheme();
    initState();
  }
  Future<void> initState()
  async {
    String json=await rootBundle.loadString('assets/json/four_language.json');
    List geetaJson=jsonDecode(json);
    geetaList=geetaJson.map((e) => GeetaModal.fromJson(e),).toList();
    notifyListeners();
  }

  void selectFuntion(int index)
  {
    selectIndex=index;
    notifyListeners();
  }
  void addListFuntion(int valueIndex)
  {
    addList.add(' $selectIndex $valueIndex value');
    // addList.add(ListModal(index1: selectIndex, index2: valueIndex));
    shareMobileSet();
    notifyListeners();
  }
  bool checkLoop(int? index1,int? index2)
  {
    bool checkValueBool=false;
        for(int i=0; i<addList.length; i++)
        {
          if(int.parse(addList[i].toString().split(" ").sublist(1,2).join(" "))==index1 && int.parse(addList[i].toString().split(" ").sublist(2,3).join(" "))==index2)
            {
              checkValueBool=true;
            }
        }
    // notifyListeners();
    return checkValueBool;
  }
  void removeListBook(int index)
  {
    addList.removeAt(index);
    shareMobileSet();
    notifyListeners();
  }
  void removeListBook1(int? index1,int? index2)
  {
    for(int i=0; i<addList.length; i++)
    {
      if(int.parse(addList[i].toString().split(" ").sublist(1,2).join(" "))==index1 && int.parse(addList[i].toString().split(" ").sublist(2,3).join(" "))==index2)
      {
        addList.removeAt(i);
      }
    }
    shareMobileSet();
    notifyListeners();
  }
  Future<void> shareMobileSet()
  async {
    SharedPreferences sharedPreferences=await SharedPreferences.getInstance();
    sharedPreferences.setStringList('bookMark', addList);
    notifyListeners();
  }
  Future<void> shareMobileGet()
  async {
    SharedPreferences sharedPreferences=await SharedPreferences.getInstance();
    addList = sharedPreferences.getStringList('bookMark') ?? [];
    notifyListeners();
    // print(addList);
  }
}