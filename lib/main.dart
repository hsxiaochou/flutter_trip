import 'package:flutter/material.dart';
import 'package:flutter_trip/pages/Home_Page.dart';
import 'package:flutter_trip/pages/test/MyExpansionTileListView.dart';
import 'package:flutter_trip/pages/test/MyGridView.dart';
import 'package:flutter_trip/pages/test/MyListView.dart';
import 'package:flutter_trip/pages/test/RefreshListView.dart';

import 'navigator/tab_navigator.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TabNavigator(),
    );
  }
}

