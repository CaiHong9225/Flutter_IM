import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'contact_vo.dart';

class ContactSiderList extends StatefulWidget {
  final List<ContactVO> items;
  final IndexedWidgetBuilder headerBuilder;
  final IndexedWidgetBuilder itemBuilder;
  final IndexedWidgetBuilder sectionBuilder;

  ContactSiderList(
      {Key key,
      @required this.items,
      this.headerBuilder,
      @required this.itemBuilder,
      @required this.sectionBuilder})
      : super(key: key);

  @override
  _ContactSiderListState createState() {
    return _ContactSiderListState();
  }
}

class _ContactSiderListState extends State<ContactSiderList> {
  //列表滚动控制器
  final ScrollController _scrollController = ScrollController();

  bool _onNotification(ScrollNotification notification) {
    return true;
  }

  //判断并显示头部视图或空布局
  _isShowHeaderView(index) {
    if (index == 0 && widget.headerBuilder != null) {
      //开关布局
      return Offstage(
        offstage: false,
        child: widget.headerBuilder(context, index),
      );
    }
    return Container();
  }

  //是否判断是否显示好友列表头
  bool _shouldShowHeader(int position) {
    if (position <= 0) {
      return false;
    }
    if (position != 0 &&
        widget.items[position].sectionKey !=
            widget.items[position - 1].sectionKey) {
      return false;
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Stack(
        children: <Widget>[
          NotificationListener(
              onNotification: _onNotification,
              child: ListView.builder(
                  controller: _scrollController,
                  physics: const AlwaysScrollableScrollPhysics(),
                  itemCount: widget.items.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        children: <Widget>[
                          //聊天室 新加好友
                          _isShowHeaderView(index),
                          Offstage(
                            offstage: _shouldShowHeader(index),
                            child: widget.sectionBuilder(context, index),
                          ),
                          Column(
                            children: <Widget>[
                              widget.itemBuilder(context, index),
                            ],
                          ),
                        ],
                      ),
                    );
                  })),
        ],
      ),
    );
  }
}
