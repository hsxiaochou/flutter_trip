import 'package:flutter/material.dart';
import 'package:flutter_trip/pages/Home_Page.dart';
import 'package:flutter_trip/pages/Me_Page.dart';
import 'package:flutter_trip/pages/search_Page.dart';
import 'package:flutter_trip/pages/travel_page.dart';
import 'package:dio/dio.dart';

class TabNavigator extends StatefulWidget {
  @override
  _TabNavigatorState createState() => _TabNavigatorState();
}

class _TabNavigatorState extends State<TabNavigator> {
  final _controller = PageController(
    initialPage: 0,
  );

  final _defaultcolor = Colors.black45;
  final _slectcolor = Colors.blueAccent;

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        children: <Widget>[HomePage(), searchPage(), travelPage(), MePage()],
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed, //将文字固定
          currentIndex: currentIndex,
          onTap: (index) {
            _controller.jumpToPage(index);
            setState(() {
              currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: _defaultcolor,
                ),
                activeIcon: Icon(
                  Icons.home,
                  color: _slectcolor,
                ),
                title: Text(
                  "首页",
                  style: TextStyle(
                      color: currentIndex != 0 ? _defaultcolor : _slectcolor),
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  color: _defaultcolor,
                ),
                activeIcon: Icon(
                  Icons.search,
                  color: _slectcolor,
                ),
                title: Text(
                  "搜索",
                  style: TextStyle(
                      color: currentIndex != 1 ? _defaultcolor : _slectcolor),
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.camera_alt,
                  color: _defaultcolor,
                ),
                activeIcon: Icon(
                  Icons.camera_alt,
                  color: _slectcolor,
                ),
                title: Text(
                  "旅拍",
                  style: TextStyle(
                      color: currentIndex != 2 ? _defaultcolor : _slectcolor),
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.school,
                  color: _defaultcolor,
                ),
                activeIcon: Icon(
                  Icons.school,
                  color: _slectcolor,
                ),
                title: Text(
                  "我的",
                  style: TextStyle(
                      color: currentIndex != 3 ? _defaultcolor : _slectcolor),
                )),
          ]),
    );
  }
}
