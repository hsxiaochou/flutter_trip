import 'package:flutter/material.dart';
import 'package:flutter_trip/model/home_page_bean_entity.dart';
import 'package:flutter_trip/util/NavigatorUtil.dart';
import 'myWebView.dart';

class LocalActNav extends StatelessWidget {
  final List<HomePageBeanSubnavlist> subNavList;

  const LocalActNav({Key key, @required this.subNavList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      //装饰器
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(6)),
      ),

      child: Padding(
        padding: EdgeInsets.all(0),
        child: _items(context),
      ),
    );
  }

  _items(BuildContext context) {
    if (subNavList == null) return null;
    List<Widget> items = [];
    subNavList.forEach((model) {
      items.add(_item(context, model));
    });

    //分2行显示
    int separate = (subNavList.length / 2 + 0.5).toInt();
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: items.sublist(0, separate),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: items.sublist(separate, subNavList.length),
          ),
        )
      ],
    );
  }

  Widget _item(BuildContext context, HomePageBeanSubnavlist model) {
    return Expanded(
        flex: 1,
        child: GestureDetector(
          onTap: () {
            NavigatorUtil.push(
                context,
                webView(
                  url: model.url,
                  hideAppBar: model.hideAppBar,
                ));
          },
          child: Column(
            children: <Widget>[
              Image.network(
                model.icon,
                height: 20,
                width: 20,
              ),
              Text(
                model.title,
                style: TextStyle(fontSize: 12),
              )
            ],
          ),
        ));
  }
}
