import 'dart:async';

import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    Timer(const Duration(seconds: 3), () => Navigator.of(context).pushReplacementNamed('/'),);
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment(0,-0.2),
            child: Image(image: AssetImage('assets/image/chapter01.png'),height: 300,),
          ),
          Align(
            alignment: Alignment(0,0.3),
            child: ListTile(title: Text('कोई भी अपने कर्म से भाग नहीं सकता, कर्म का फल तो भुगतना ही पड़ता हैं। इसलिए अच्छे कर्म करो ताकि अच्छे फल मिले।',textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold),)),
          )
        ],
      ),
    );
  }
}
