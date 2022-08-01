import 'package:flutter/material.dart';
import 'package:project_all_page_log/core/logger_mixin.dart';

class GenericHomeDetailView extends StatefulWidget {
  const GenericHomeDetailView({super.key, required this.id});
  final String id;

  @override
  State<GenericHomeDetailView> createState() => _GenericHomeDetailViewState();
}

class _GenericHomeDetailViewState extends State<GenericHomeDetailView> with LoggerMixin{
    int genericNumber = 1;
      
  @override
  void init() {
  }

  // void logToService(){
  //   print(toString());
  //   print(genericNumber);
  //   print(widget.id);
  //   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: Text(widget.id),),
    );
  }
  
  @override
  final PageSpecialKeys key = PageSpecialKeys.detail;
  
  @override
  CustomModel get model => CustomModel(id: widget.id,description: 'This is detail page');
}