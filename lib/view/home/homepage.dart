
import 'package:flutter/material.dart';
import 'package:geeta/provider/home_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    HomeProvider homeProvider=Provider.of<HomeProvider>(context);
    homeProvider.geetaFuntion();
    return Scaffold(
      body: Container(
        height: double.infinity,
          width: 500,
          padding: EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 50,),
                // Text('${geetaString}',textAlign: TextAlign.center,style: TextStyle(fontSize: 20),),
                Text('${homeProvider.geetaList[0].o1.sanskrit[0].toString().replaceAll("n", '\n').replaceAll("'", '')}',textAlign: TextAlign.center,style: TextStyle(fontSize: 20),),
                Text('${homeProvider.geetaList[0].o1.hindi[0].toString()}',textAlign: TextAlign.center,style: TextStyle(fontSize: 20),),
                Text('${homeProvider.geetaList[0].o1.english[0].toString()}',textAlign: TextAlign.center,style: TextStyle(fontSize: 20),),
              ],
            ),
          )),
    );
  }
}
