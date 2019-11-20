import 'package:flutter/material.dart';
import 'package:flutter_trip/model/home_page_bean_entity.dart';
import 'package:flutter_trip/util/NavigatorUtil.dart';
import 'myWebView.dart';

class SaleBox extends StatelessWidget {
  final HomePageBeanSalesbox salesBox;

  const SaleBox({Key Key, @required this.salesBox}) : super(key: Key);

  @override
  Widget build(BuildContext context) {
    return Container(child: _gridNavItems(context));
  }

  _gridNavItems(BuildContext context) {
    if (salesBox == null) return null;
    List<Widget> items = [];
    items.add(_doubleItem(
        context, salesBox.bigCard1, salesBox.bigCard2, true, false));
    items.add(_doubleItem(
        context, salesBox.smallCard1, salesBox.smallCard2, false, false));
    items.add(_doubleItem(
        context, salesBox.smallCard3, salesBox.smallCard4, false, true));
    return Column(
      children: <Widget>[
        Container(
          height: 44,
          margin: EdgeInsets.only(left: 10),
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(width: 1, color: Color(0xfff2f2f2)))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Image.network(
                salesBox.icon,
                width: 45,
                height: 15,
                fit: BoxFit.fill,
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 1, 10, 1),
                margin: EdgeInsets.only(right: 7),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  gradient: LinearGradient(colors: [
                    Color(0xffff44e36),
                    Color(0xffff6cc9),
                  ], begin: Alignment.centerLeft, end: Alignment.centerRight),
                ),
                //点击效果
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => webView(
                                  url: salesBox.moreUrl,
                                  title: "更多活动",
                                )));
                  },
                  child: Text(
                    "更多活动 >",
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: items.sublist(0, 1),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: items.sublist(1, 2),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: items.sublist(2, 3),
        )
      ],
    );
  }

  Widget _doubleItem(BuildContext context, HomePageBeanSalesboxSmallcard left,
      HomePageBeanSalesboxSmallcard right, bool big, bool last) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        _item(context, left, big, false, last),
        _item(context, right, big, true, last)
      ],
    );
  }

 Widget _item(BuildContext context, HomePageBeanSalesboxSmallcard model, bool big,
      bool right, bool last) {
    BorderSide borderSide = BorderSide(width: 2, color: Color(0xff7887f));
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => webView(url: model.url, title: "")));
      },
      child: Container(
        decoration: BoxDecoration(
            border: Border(bottom: last ? borderSide : BorderSide.none)),
        child: Column(
          children: <Widget>[
            Image.network(
              model.icon,
              width: MediaQuery.of(context).size.width/2-10,
              height: big ? 129 : 80,
            )
          ],
        ),
      ),
    );
  }
}
