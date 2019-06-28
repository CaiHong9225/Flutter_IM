import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'contact_sider_list.dart';
import 'contact_vo.dart';
import 'contact_header.dart';
import 'contact_item.dart';

class Contacts extends StatefulWidget {
  @override
  _ContactsState createState() {
    return _ContactsState();
  }
}

class _ContactsState extends State<Contacts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ContactSiderList(
          items: contactData,
          //好友列表头构造器
          headerBuilder: (BuildContext, index) {
            return Container(
              child: ContactHeader(),
            );
          },
          //好友列表项构造器
          itemBuilder: (BuildContext, index) {
            return Container(
              color: Colors.white,
              alignment: Alignment.centerLeft,
              child: ContactItem(
                item: contactData[index],
              ),
            );
          },
          //字母构造器
          sectionBuilder: (BuildContext, index) {
            return Container(
              height: 32.0,
              padding: const EdgeInsets.only(left: 14.0),
              color: Colors.grey[300],
              alignment: Alignment.centerLeft,
              child: Text(
                contactData[index].sectionKey,
                style: TextStyle(fontSize: 14.0, color: Color(0xff909090)),
              ),
            );
          }),
    );
  }
}
