import 'package:flutter/material.dart';
import 'package:flutter_trip/model/home_page_bean_entity.dart';

class Gridnav extends StatelessWidget {
  final HomePageBeanGridnav gridnavModel;
  final String name;

  //required 必传参数   “xiaoming”为默认值
  const Gridnav({Key key, @required this.gridnavModel, this.name = "xiaoming"})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(name);
  }
}



class GridNav2 extends StatefulWidget{
  final String name;

  const GridNav2({Key key, this.name}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _GridNav2State();
  }
}

class _GridNav2State extends State<GridNav2>{
  @override
  Widget build(BuildContext context) {
    return Text(widget.name);
  }
}
