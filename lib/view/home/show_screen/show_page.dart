import 'package:flutter/material.dart';
import 'package:geeta/provider/home_provider.dart';
import 'package:provider/provider.dart';

class ShowPage extends StatelessWidget {
  const ShowPage({super.key});

  @override
  Widget build(BuildContext context) {
    HomeProvider homeProviderTrue = Provider.of(context, listen: true);
    HomeProvider homeProviderFalse = Provider.of(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text(
            homeProviderTrue.geetaList[homeProviderTrue.selectIndex].title),
      ),
      body: ListView.builder(
        itemCount: homeProviderTrue
            .geetaList[homeProviderTrue.selectIndex].o1.sanskrit.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            showModalBottomSheet(useSafeArea: true,scrollControlDisabledMaxHeightRatio: 0.75,context: context, builder: (context) {
              return Container(
                // height: 300,
                decoration: BoxDecoration(
                color: Theme.of(context).scaffoldBackgroundColor,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 20,),
                    Card(
                      //todo color set
                      child: ListTile(
                        title: Text(homeProviderTrue.geetaList[homeProviderTrue.selectIndex].o1.english[index],textAlign: TextAlign.center,),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Card(
                      //todo color set
                      child: ListTile(
                        title: Text(homeProviderTrue.geetaList[homeProviderTrue.selectIndex].o1.gujarati[index],textAlign: TextAlign.center,),
                      ),
                    ),
                  ],
                ),
              );
            },);
          },
          child: Card(
            elevation: 5,
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    homeProviderTrue.geetaList[homeProviderTrue.selectIndex].o1
                            .sanskrit[index]
                            .toString()
                            .replaceAll('n', '\n')
                            .replaceAll("'", ''),
                    textAlign: TextAlign.center,
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text('तात्पर्यः',style: TextStyle(fontWeight: FontWeight.bold),),
                    ),
                  ],
                ),
                ListTile(
                  title: Text(
                    homeProviderTrue
                        .geetaList[homeProviderTrue.selectIndex].o1.hindi[index],
                    textAlign: TextAlign.center,
                  ),
                ),
                IconButton(onPressed: () {
                  homeProviderFalse.addListFuntion(index);
                }, icon: const Icon(Icons.favorite_border))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
