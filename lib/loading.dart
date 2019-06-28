import 'package:flutter/material.dart';
import 'dart:async';

class LoadingPage extends StatefulWidget {
  @override
  _LoadingPageState createState() {
    return _LoadingPageState();
  }
}

class _LoadingPageState extends State<LoadingPage> {
  Timer _countdownTmer;
  String text;
  int countDownNum = 6;

  void timerCountDown() {
    setState(() {
      if (_countdownTmer != null) {
        return;
      }
      _countdownTmer = Timer.periodic(Duration(seconds: 1), (timer) {
        setState(() {
          if (countDownNum > 0) {
            text = '${countDownNum--}s';
          } else {
            text = "进入";
            Navigator.of(context).pushReplacementNamed("app");

            _countdownTmer.cancel();
            _countdownTmer = null;
          }
        });
      });
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
//    Future.delayed(Duration(seconds: 3), () {
//      Navigator.of(context).pushReplacementNamed("app");
//    });
    timerCountDown();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _countdownTmer.cancel();
    _countdownTmer = null;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Stack(
        children: <Widget>[
          Image.asset(
            "images/gakki.jpg",
            fit: BoxFit.contain,
          ),
          Positioned(
              right: 10.0,
              bottom: 10.0,
              child: Text(
                text,
                style: TextStyle(fontSize: 16.0, color: Colors.green),
              )),
        ],
      ),
    );
  }
}
