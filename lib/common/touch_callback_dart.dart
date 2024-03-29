import 'package:flutter/material.dart';

class TouchCallBack extends StatefulWidget {
  final Widget child;
  final VoidCallback onPressed;
  final bool isfeed;
  final Color background;

  TouchCallBack(
      {Key key,
      @required this.child,
      @required this.onPressed,
      this.isfeed: true,
      this.background: const Color(0xffd8d8d8)})
      : super(key: key);

  @override
  _TouchCallBackState createState() {
    return _TouchCallBackState();
  }
}

class _TouchCallBackState extends State<TouchCallBack> {
  Color color = Colors.transparent;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      child: Container(
        color: color,
        child: widget.child,
      ),
      onTap: widget.onPressed,
      onPanDown: (d) {
        if (widget.isfeed == false) return;
        setState(() {
          color = widget.background;
        });
      },
      onPanCancel: () {
        color = Colors.transparent;
      },
    );
  }
}
