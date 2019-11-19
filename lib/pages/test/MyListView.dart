import 'package:flutter/material.dart';

class MyListView extends StatelessWidget {
  static const CITY_NAMES = [
    "北京",
    "上海",
    "广州",
    "深圳",
    "苏州",
    "成都",
    "北京",
    "武汉",
    "上海",
    "北京",
    "上海",
    "北京",
    "上海",
    "北京",
    "上海",
  ];

  @override
  Widget build(BuildContext context) {

    final title ="Basic list";
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: ListView(
          scrollDirection: Axis.horizontal,
          children: _buildList(),
        ),
      ),
    );
  }

  _buildList() {
    return CITY_NAMES.map((city)=>_item(city)).toList();
  }

 Widget _item(String city) {
    return Container(
      width: 160,
      margin: EdgeInsets.only(right: 5),
      alignment: Alignment.center,
      decoration: BoxDecoration(color: Colors.teal),
      child: Text(city,style: TextStyle(color: Colors.white,fontSize: 20)),
    );
  }
}


