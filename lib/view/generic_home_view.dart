import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project_all_page_log/core/logger_mixin.dart';
import 'package:project_all_page_log/view/generic_home_detail_view.dart';

class GenericHomeView extends StatefulWidget {
  const GenericHomeView({super.key});

  @override
  State<GenericHomeView> createState() => _GenericHomeViewState();
}

class _GenericHomeViewState extends State<GenericHomeView> with LoggerMixin{
  int genericNumber = 1;

  // void logToService(){
  //   print(toString());
  //   print(genericNumber);
  //   print('');
  //   }
    @override
  void init() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context,index){
        return Card(
          child: ListTile(
            leading: Text('$index'),
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  GenericHomeDetailView(id: '$index')));
            },
          ),
        );
      }),
    );
  }
  
  @override
  PageSpecialKeys get key => PageSpecialKeys.home;
  
  @override
  CustomModel get model => CustomModel(description: 'This is home page');

}