import 'package:flutter/material.dart';
import 'package:geeta/provider/home_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    HomeProvider homeProviderTrue =
        Provider.of<HomeProvider>(context, listen: true);
    HomeProvider homeProviderFalse =
        Provider.of<HomeProvider>(context, listen: false);
    // homeProvider.geetaFuntion();
    return Scaffold(
      appBar: AppBar(
        title: const Text('श्रीमद्भगवद्गीता'),
        leading: const Icon(Icons.offline_bolt_outlined),
        actions: [
          IconButton(onPressed: () {
            Navigator.of(context).pushNamed('/book');
          }, icon: Icon(Icons.bookmarks_outlined))
        ],
        centerTitle: true,
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: homeProviderTrue.geetaList.length,
          itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              homeProviderFalse.selectFuntion(index);
              Navigator.of(context).pushNamed('/show');
            },
            child: Card(
              elevation: 2,
              child: ListTile(
                leading: Image(image: AssetImage(homeProviderTrue.geetaList[index].image)),
                subtitle: Text('Chapter${homeProviderTrue.geetaList[index].number}'),
                title: Text(homeProviderTrue.geetaList[index].title),
                trailing: const Icon(Icons.navigate_next),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
// Text('${geetaString}',textAlign: TextAlign.center,style: TextStyle(fontSize: 20),),
// Text('${homeProvider.geetaList[0].o1.sanskrit[0].toString().replaceAll("n", '\n').replaceAll("'", '')}',textAlign: TextAlign.center,style: TextStyle(fontSize: 20),),
// Text('${homeProvider.geetaList[0].o1.hindi[0].toString()}',textAlign: TextAlign.center,style: TextStyle(fontSize: 20),),
// Text('${homeProvider.geetaList[0].o1.english[0].toString()}',textAlign: TextAlign.center,style: TextStyle(fontSize: 20),),
