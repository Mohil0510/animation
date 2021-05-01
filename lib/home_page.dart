import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AlignmentGeometry _alignment = Alignment.bottomLeft;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimationAligh'),
        centerTitle: true,
      ),
      body: GestureDetector(
        onTap: () {
          setState(() {
            if (_alignment == Alignment.bottomLeft) {
              _alignment = Alignment.topLeft;
            } else if (_alignment == Alignment.topLeft) {
              _alignment = Alignment.topRight;
            } else if (_alignment == Alignment.topRight) {
              _alignment = Alignment.bottomRight;
            } else if (_alignment == Alignment.bottomRight) {
              _alignment = Alignment.bottomLeft;
            }
          });
        },
        child: Center(
          child: Container(
            width: 350.0,
            height: 350.0,
            color: Colors.black,
            child: AnimatedAlign(
              alignment: _alignment,
              duration: Duration(seconds: 3),
              curve: Curves.fastOutSlowIn,
              child: FlutterLogo(size: 60.0),
            ),
          ),
        ),
      ),
    );
  }
}
