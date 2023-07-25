import 'package:flutter/material.dart';

class LatihanLayouting extends StatelessWidget {
  const LatihanLayouting({super.key});

  @override
  Widget build(BuildContext context) {

    Size screenSize = MediaQuery.of(context).size;
    double halfWidth = screenSize.width / 2;
    double maxWidth = screenSize.width;
    double height = 100;

    return Scaffold(
      appBar: AppBar(
        title: Text("Responsive Layout"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            height: height,
            width: maxWidth,
            color: Colors.purple,
            child: Center(
              child: Text("Column 1"),
            ),
          ),
          Row(
            children: [
              Container(
                height: height,
                width: halfWidth,
                color: Colors.green,
                child: Center(
                  child: Text("Column 2, Row 1"),
                ),
              ),
              Container(
                height: height,
                width: halfWidth,
                color: Colors.orange,
                child: Center(
                  child: Text("Column 2, Row 2"),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                height: height,
                width: halfWidth,
                color: Colors.red,
                child: Center(
                  child: Text("Column 3, Row 1"),
                ),
              ),
              Container(
                height: height,
                width: halfWidth,
                color: Colors.blue,
                child: Center(
                  child: Text("Column 3, Row 2"),
                ),
              ),
            ],
          ),
          Container(
            height: height,
            width: maxWidth,
            color: Colors.yellow,
            child: Center(
              child: Text("Column 4"),
            ),
          )
        ],
      ),
    );
  }
}