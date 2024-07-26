import 'package:flutter/material.dart';
import 'package:geeta/provider/home_provider.dart';
import 'package:provider/provider.dart';


class BookmarkPage extends StatelessWidget {
  const BookmarkPage({super.key});

  @override
  Widget build(BuildContext context) {
    HomeProvider homeProviderTrue=Provider.of<HomeProvider>(context,listen: true);
    HomeProvider homeProviderFalse=Provider.of<HomeProvider>(context,listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text('BookMark'),
        centerTitle: true,
      ),
      body: ListView.builder(itemCount: homeProviderTrue.addList.length,itemBuilder: (context, index) => GestureDetector(
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
                      title: Text(homeProviderTrue.geetaList[homeProviderTrue.addList[index].index1!].o1.english[homeProviderTrue.addList[index].index2!],textAlign: TextAlign.center,),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Card(
                    //todo color set
                    child: ListTile(
                      title: Text(homeProviderTrue.geetaList[homeProviderTrue.addList[index].index1!].o1.gujarati[homeProviderTrue.addList[index].index2!],textAlign: TextAlign.center,),
                    ),
                  ),
                ],
              ),
            );
          },);
        },
        child: Card(
          child: Column(
            children: [
              ListTile(title: Text(homeProviderTrue.geetaList[homeProviderTrue.addList[index].index1!].o1.sanskrit[homeProviderTrue.addList[index].index2!],textAlign: TextAlign.center,),
                ),
              ListTile(title: Text(homeProviderTrue.geetaList[homeProviderTrue.addList[index].index1!].o1.hindi[homeProviderTrue.addList[index].index2!],textAlign: TextAlign.center,),subtitle: IconButton(onPressed: () {
                homeProviderFalse.removeListBook(index);
              }, icon: Icon(Icons.delete_outline)),),

            ],
          ),
        ),
      ),),
    );
  }
}
