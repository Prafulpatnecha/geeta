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
  bool checkLoop(int? index1,int? index2)
  {
    bool checkValueBool=false;
        for(int i=0; i<addList.length; i++)
        {
          if(addList[i].index1==index1 && addList[i].index2==index2)
            {
              checkValueBool=true;
            }
        }
    notifyListeners();
    return checkValueBool;
  }
  void removeListBook(int index)
  {
    addList.removeAt(index);
    notifyListeners();
  }
  void removeListBook1(int? index1,int? index2)
  {
    for(int i=0; i<addList.length; i++)
    {
      if(addList[i].index1==index1 && addList[i].index2==index2)
      {
        addList.removeAt(i);
      }
    }
    notifyListeners();
  }
}