import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geeta/modal/home_modal.dart';

class HomeProvider
{
  late GeetaModal geetaModal;
  Future<void> initState()
  async {
    String json=await rootBundle.loadString('assets/json/four_language.json');
  }
}