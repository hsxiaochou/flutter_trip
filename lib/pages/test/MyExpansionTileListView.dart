import 'package:flutter/material.dart';

class MyExpansionTileListView extends StatelessWidget {
  static const CITY_NAMES = {
    "北京": [ "武汉", "上海", "北京", ],
    "上海": [ "武汉", "上海", "北京", ],
    "南京": [ "武汉", "上海", "北京", ],
    "重庆": [ "武汉", "上海", "北京", "上海", "北京", "上海", "北京"],
    "河北": [ "武汉", "上海", "北京", "上海", "北京", "上海", "北京"],
    "广州": [ "武汉", "上海", "北京", "上海", "北京", "上海", "北京"],
  };


  @override
  Widget build(BuildContext context) {
    final title = "列表展开于收起";
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: ListView(
          children: _buildList(),
        ),
      ),
    );
  }

  _buildList() {
    List<Widget> widgets =[];
    CITY_NAMES.keys.forEach((key){
      widgets.add(_item(key,CITY_NAMES[key]));
    });
    return widgets;
  }

  Widget _item(String city,List<String> subCities) {
    return ExpansionTile(title:Text(
      city,
      style: TextStyle(color: Colors.black45,fontSize: 24),
    ),
    children: subCities.map((subCity)=>_buildSub(subCity)).toList(),
    );
  }

 Widget _buildSub(String subCity) {
    return FractionallySizedBox(
      widthFactor: 1,
      child: Container(
        alignment: Alignment.center,
        height: 50,
        margin: EdgeInsets.only(bottom: 5),
        decoration: BoxDecoration(color: Colors.lightBlueAccent),
        child: Text(subCity),
      ),
    );
  }
}


