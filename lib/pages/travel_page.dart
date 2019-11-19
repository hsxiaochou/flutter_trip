import 'package:flutter/material.dart';

class travelPage extends StatefulWidget {
  @override
  _travelPageState createState() => _travelPageState();
}

class _travelPageState extends State<travelPage> {
  final _controller = PageController(
    initialPage: 0,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Text("旅拍"),
      ),
    );
  }
}
