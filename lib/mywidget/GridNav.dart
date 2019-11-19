import 'package:flutter/material.dart';
import 'package:flutter_trip/model/home_page_bean_entity.dart';
import 'package:flutter_trip/util/NavigatorUtil.dart';
import 'myWebView.dart';

class GridNav extends StatelessWidget {
  final HomePageBeanGridnav gridNavModel;

  const GridNav({Key Key, @required this.gridNavModel}) : super(key: Key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(3, 0, 3, 0),
      //physicalmodel 避免2层布局重叠遮住圆角
      child: PhysicalModel(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(6),
        //裁剪
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: _gridNavItems(context),
        ),
      ),
    );
  }

  _gridNavItems(BuildContext context) {
    List<Widget> items = [];
    if (gridNavModel == null) return items;
    if (gridNavModel.hotel != null) {
      items.add(_gridItem(context, gridNavModel.hotel, true));
    }
    if (gridNavModel.flight != null) {
      items.add(_gridItem(context, gridNavModel.flight, true));
    }
    if (gridNavModel.travel != null) {
      items.add(_gridItem(context, gridNavModel.travel, true));
    }
    return items;
  }

  Widget _gridItem(BuildContext context, HomePageBeanGridnavHotel hotel,
      bool first) {
    List<Widget> items = [];
    items.add(_mainItem(context, hotel.mainItem));
    items.add(_doubleItem(context, hotel.item1, hotel.item2));
    items.add(_doubleItem(context, hotel.item3, hotel.item4));
    List<Widget> expandItems = [];
    Color startColor = Color(int.parse('0xff' + hotel.startColor));
    Color endColor = Color(int.parse('0xff' + hotel.endColor));
    items.forEach((item) {
      expandItems.add(Expanded(
        child: item,
        flex: 1,
      ));
    });
    return Container(
      height: 88,
      margin: first ? EdgeInsets.only(top: 6) : EdgeInsets.only(top: 3),
      decoration: BoxDecoration(
        //线性渐变
        gradient: LinearGradient(colors: [startColor, endColor]),
      ),
      child: Row(
        children: expandItems,
      ),
    );
  }

  Widget _mainItem(BuildContext context,
      HomePageBeanGridnavHotelMainitem mainItem) {
    return _wrapGesture(
      context,
      mainItem,
      Stack(
      alignment: AlignmentDirectional.topCenter,
      children: <Widget>[
        Image.network(
          mainItem.icon,
          fit: BoxFit.contain,
          height: 88,
          width: 121,
          alignment: AlignmentDirectional.bottomEnd,
        ),
        Container(
          margin: EdgeInsets.only(top: 11),
          child: Text(
            mainItem.title,
            style: TextStyle(fontSize: 14, color: Colors.white),
          ),
        )
      ],
    ));
  }

  Widget _wrapGesture(BuildContext context,
      HomePageBeanGridnavHotelMainitem mainItem, Widget widget) {
    return GestureDetector(
      onTap: () {
        NavigatorUtil.push(
            context,
            webView(
              url: mainItem.url,
              statusBarColor: mainItem.statusBarColor,
              hideAppBar: true,
            ));
      },
      child: widget,
    );
  }

  Widget _wrapGesture2(BuildContext context,
      HomePageBeanGridnavHotelItem1 mainItem, Widget widget) {
    return GestureDetector(
      onTap: () {
        NavigatorUtil.push(
            context,
            webView(
              url: mainItem.url,
              statusBarColor: mainItem.statusBarColor,
              hideAppBar: true,
            ));
      },
      child: widget,
    );
  }

  Widget _doubleItem(BuildContext context, HomePageBeanGridnavHotelItem1 item1,
      HomePageBeanGridnavHotelItem1 item2) {
    return Column(
      children: <Widget>[
        Expanded(child: _item(context, item1, true)),
        Expanded(child: _item(context, item2, false)),
      ],
    );
  }

  _item(BuildContext context, HomePageBeanGridnavHotelItem1 item2, bool first) {
    var borderSide = BorderSide(width: 0.8, color: Colors.white);
    return FractionallySizedBox(
      //填满父布局
      widthFactor: 1,
      child: Container(
        decoration: BoxDecoration(
            border: Border(
              left: borderSide,
              bottom: first ? borderSide : BorderSide.none,
            )),
        child: _wrapGesture2(
            context,
            item2,
            Center(
              child: Text(
                item2.title,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
            )),
      ),
    );
  }
}
