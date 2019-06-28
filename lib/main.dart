import 'package:flutter/material.dart';
import 'package:flutter_im/search.dart';
import 'app.dart';
import 'loading.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final ThemeData mDefaultTheme = ThemeData(
    primaryColor: Colors.green,
    scaffoldBackgroundColor: Color(0xFFebebed),
    cardColor: Colors.green,
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '聊天室',
      theme: mDefaultTheme,
      debugShowCheckedModeBanner: false,
      routes: {
        "app": (BuildContext context) => App(),
        "/friends": (_) => WebviewScaffold(
              withZoom: true,
              withLocalStorage: true,
              url: "https://flutter.io/",
              appBar: AppBar(
                title: Text('Flutter官网'),
              ),
            ),
        "search": (BuildContext context) => Search(),
      },
      home: LoadingPage(),
    );
  }
}
