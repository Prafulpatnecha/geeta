import 'package:flutter/material.dart';
import 'package:geeta/provider/home_provider.dart';
import 'package:provider/provider.dart';


class BookmarkPage extends StatelessWidget {
  const BookmarkPage({super.key});

  @override
  Widget build(BuildContext context) {
    HomeProvider homeProviderTrue=Provider.of<HomeProvider>(context,listen: true);
    return Scaffold(
      appBar: AppBar(

      ),
      body: ListView.builder(itemCount: homeProviderTrue.addList.length,itemBuilder: (context, index) => Column(
        children: [
          ListTile(title: Text(homeProviderTrue.geetaList[homeProviderTrue.addList[index].index1!].o1.hindi[homeProviderTrue.addList[index].index2!]),),
        ],
      ),),
    );
  }
}
