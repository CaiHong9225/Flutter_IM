import 'package:flutter/material.dart';
import 'package:flutter_im/common/touch_callback_dart.dart';
import 'package:flutter_im/common/im_item.dart';

class Personal extends StatefulWidget {
  @override
  _PersonalState createState() {
    return _PersonalState();
  }
}

class _PersonalState extends State<Personal> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 20.0),
            color: Colors.white,
            height: 80.0,
            child: TouchCallBack(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(left: 12.0, right: 15.0),
                    child: Image.asset(
                      'images/gakki.jpg',
                      width: 70.0,
                      height: 70.0,
                    ),
                  ),
                  Expanded(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Gakki',
                        style:
                            TextStyle(fontSize: 18.0, color: Color(0xff353535)),
                      ),
                      Text(
                        '账号',
                        style:
                            TextStyle(fontSize: 14.0, color: Color(0xffa9a9a9)),
                      ),
                    ],
                  )),
                  Container(
                    margin: const EdgeInsets.only(left: 12.0, right: 15.0),
                    child: Image.asset(
                      'images/code.png',
                      width: 24.0,
                      height: 24.0,
                    ),
                  ),
                ],
              ),
              onPressed: () {},
            ),
          ),
          //列表项，ImItem熏染
          Container(
            margin: const EdgeInsets.only(top: 20.0),
            color: Colors.white,
            child: ImItem(
              title: '好友动态',
              imagePath: 'images/icon_me_friends.png',
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20.0),
            color: Colors.white,
            child: Column(
              children: <Widget>[
                ImItem(
                  imagePath: 'images/icon_me_message.png',
                  title: '信息管理',
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Divider(
                    height: 0.5,
                    color: Color(0xffd9d9d9),
                  ),
                ),
                ImItem(
                  imagePath: 'images/icon_me_photo.png',
                  title: '我的相册',
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Divider(
                    height: 0.5,
                    color: Color(0xffd9d9d9),
                  ),
                ),
                ImItem(
                  imagePath: 'images/icon_me_file.png',
                  title: '我的文件',
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Divider(
                    height: 0.5,
                    color: Color(0xffd9d9d9),
                  ),
                ),
                ImItem(
                  imagePath: 'images/icon_me_service.png',
                  title: '联系客服',
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20.0),
                  color: Colors.white,
                  child: ImItem(
                    title: '清理缓存',
                    imagePath: 'images/icon_me_clear.png',
                  ),
                ),
              ],
            ),

          ),
        ],
      ),
    );
  }
}
