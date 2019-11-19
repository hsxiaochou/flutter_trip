import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:flutter_trip/model/home_page_bean_entity.dart';
import 'dart:convert';

class MyfreshListView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyRefreshState();
  }
}

class _MyRefreshState extends State<MyfreshListView> {
  List<String> cityNames = [
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

  final title = "高级功能列表下拉刷新";
  ScrollController scrollController = ScrollController();

  @override
  void initState() {
    scrollController.addListener(() {
      if (scrollController.position.pixels ==
          scrollController.position.maxScrollExtent) {
        _loadData();
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: RefreshIndicator(
          child: ListView(
            controller: scrollController,
            children: _buildList(),
          ),
          onRefresh: _handleRefresh,
        ),
      ),
    );
  }

  _buildList() {
    return cityNames.map((city) => _item(city)).toList();
  }

  Widget _item(String city) {
    return Container(
      height: 80,
      margin: EdgeInsets.all(5),
      alignment: Alignment.center,
      decoration: BoxDecoration(color: Colors.teal),
      child: Text(city, style: TextStyle(color: Colors.white, fontSize: 20)),
    );
  }

  Future<Null> _handleRefresh() async {
    await Future.delayed(Duration(seconds: 2));
    setState(() {
      cityNames = cityNames.reversed.toList();
    });
    return null;
  }

  void _loadData() async {
    await Future.delayed(Duration(milliseconds: 500));
    setState(() {
      List<String> list = List<String>.from(cityNames);
      list.addAll(cityNames);
      cityNames = list;
    });
  }

}
