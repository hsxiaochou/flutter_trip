import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

const CATCH_URLS = ['m.ctrip.com', 'm.ctrip.com/html5/', 'm.ctrip.com/html5'];

class webView extends StatefulWidget {
  String url;
  final String statusBarColor;
  final String title;
  final bool hideAppBar;
  final bool backForbid;

  webView({this.url,
    this.statusBarColor,
    this.title,
    this.hideAppBar,
    this.backForbid = false}) {
    if (url != null && url.contains('ctrip.com')) {
      //fix 携程H5 http://无法打开问题
      url = url.replaceAll("http://", 'https://');
    }
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _webviewstate();
  }
}

class _webviewstate extends State<webView> {
  final webviewReference = FlutterWebviewPlugin();
  StreamSubscription<String> _onUrlChanged;
  StreamSubscription<WebViewStateChanged> _onStateChanged;
  StreamSubscription<WebViewHttpError> _onHttpError;
  bool exiting = false;

  @override
  void initState() {
    super.initState();
    webviewReference.close();
    _onUrlChanged = webviewReference.onUrlChanged.listen((String url) {});
    _onStateChanged =
        webviewReference.onStateChanged.listen((WebViewStateChanged state) {
          switch (state.type) {
            case WebViewState.startLoad:
              if (_isToMain(state.url) && !exiting) {
                if (widget.backForbid) {
                  webviewReference.launch(widget.url);
                } else {
                  Navigator.pop(context);
                  exiting = true;
                }
              }
              break;
            default:
              break;
          }
        });
    _onHttpError =
        webviewReference.onHttpError.listen((WebViewHttpError error) {
          print(error);
        });
  }

  @override
  void dispose() {
    _onStateChanged.cancel();
    _onUrlChanged.cancel();
    _onHttpError.cancel();
    webviewReference.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String statusBarColorstr = widget.statusBarColor ?? 'fffff';
    Color backButtonColor;

    if (statusBarColorstr == "ffffff") {
      backButtonColor = Colors.black;
    } else {
      backButtonColor = Colors.white;
    }

    return Scaffold(
      body: Column(
        children: <Widget>[
          _appBar(
              Color(int.parse("0xff" + statusBarColorstr)), backButtonColor),
          Expanded(
              child: WebviewScaffold(
                url: widget.url,
                userAgent: 'null',//防止携程H5页面重定向到打开携程APP ctrip://wireless/xxx的网址
                withZoom: true,
                withLocalStorage: true,
                hidden: true,
                initialChild: Container(
                  color: Colors.white,
                  child: Center(
                    child: Text("waiting……"),
                  ),
                ),
              ))
        ],
      ),
    );
  }

  bool _isToMain(String url) {
    bool contain = false;
    for (final value in CATCH_URLS) {
      if (url?.endsWith(value) ?? false) {
        contain = true;
        break;
      }
    }
    return contain;
  }

  _appBar(Color backgroundColor, Color backButtoncolor) {
    if (widget.hideAppBar ?? false) {
      return Container(
        color: backButtoncolor,
        height: 30,
      );
    }

    return Container(
      color: backButtoncolor,
      padding: EdgeInsets.fromLTRB(0, 40, 0, 10),
      //撑满全屏
      child: FractionallySizedBox(
        widthFactor: 1,
        child: Stack(
          children: <Widget>[
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                margin: EdgeInsets.only(left: 10),
                child: Icon(
                  Icons.backspace,
                  color: backButtoncolor,
                  size: 20,
                ),
              ),
            ),
            Positioned(
                left: 0,
                right: 0,
                child: Center(
                  child: Text(
                    widget.title,
                    style: TextStyle(color: backButtoncolor, fontSize: 20),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
