import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:dio/dio.dart';
import 'package:flutter_trip/model/home_page_bean_entity.dart';
import 'package:flutter_trip/mywidget/GridNav.dart';
import 'package:flutter_trip/mywidget/LocalActNav.dart';
import 'dart:convert';

import 'package:flutter_trip/mywidget/Local_nav.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List imageUrls = [
    "https://cdn.pixabay.com/photo/2014/03/11/18/01/africa-285403_1280.jpg",
    "https://cdn.pixabay.com/photo/2019/08/25/16/57/purple-4429887_1280.jpg",
    "https://cdn.pixabay.com/photo/2016/12/04/21/58/rabbit-1882699_1280.jpg",
    "https://cdn.pixabay.com/photo/2017/01/14/12/59/iceland-1979445_1280.jpg",
    "https://cdn.pixabay.com/photo/2014/12/12/19/45/lion-565820_1280.jpg"
  ];

  List<HomePageBeanLocalnavlist> localNavList = [];
  HomePageBeanGridnav gridNav;
  List<HomePageBeanSubnavlist> localActList = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xfff2f2f2),
        body: Stack(
          children: <Widget>[
            MediaQuery.removePadding(
              removeTop: true,
              context: context,
              child: NotificationListener(
                onNotification: (scrollNotification) {
                  // ignore: missing_return
                  if (scrollNotification is ScrollUpdateNotification &&
                      scrollNotification.depth == 0) {
                    //滚动且列表滚动的时候
                    _onScroll(scrollNotification.metrics.pixels);
                  }
                },
                child: ListView(
                  children: <Widget>[
                    Container(
                        height: 200,
                        child: Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: Swiper(
                            layout: SwiperLayout.STACK,
                            itemWidth: 350.0,
                            duration: 1000,
                            itemCount: imageUrls.length,
                            autoplay: true,
                            itemBuilder: (BuildContext context, int index) {
                              return Image.network(
                                imageUrls[index],
                                fit: BoxFit.fill,
                              );
                            },
                            pagination: SwiperPagination(),
                          ),
                        )),
                    Padding(
                      padding: EdgeInsets.fromLTRB(8, 5, 5, 8),
                      child: LocalNav(localNavList: localNavList),
                    ),
                    Container(
                      child: GridNav(gridNavModel: gridNav),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(8, 5, 5, 8),
                      child: LocalActNav(subNavList: localActList),
                    ),
                    Container(
                      height: 900,
                      child: Text(""),
                    ),
                  ],
                ),
              ),
            ),
            Opacity(
              opacity: appBarAlpha,
              child: Container(
                height: 80,
                decoration: BoxDecoration(color: Colors.white),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Text("首页"),
                  ),
                ),
              ),
            )
          ],
        ));
  }

  double appBarAlpha = 0;
  final APPBAR_SCROLL_OFFSET = 100;

  void _onScroll(double pixels) {
    double alpha = pixels / APPBAR_SCROLL_OFFSET;
    if (alpha < 0) {
      alpha = 0;
    } else if (alpha > 1) {
      alpha = 1;
    }

    setState(() {
      appBarAlpha = alpha;
    });
    print(appBarAlpha);
  }

  void loadData() async {
    Response response = await Dio()
        .get("http://www.devio.org/io/flutter_app/json/home_page.json");
    var data = response.data;
    String jsonData = json.encode(data);
    Map<String, dynamic> mapData = json.decode(jsonData);
    var homepage = HomePageBeanEntity.fromJson(mapData);
    setState(() {
      localNavList = homepage.localNavList;
      gridNav = homepage.gridNav;
      localActList = homepage.subNavList;
    });
  }
}
