import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      width: MediaQuery.of(context).size.width * 0.75,
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: [
              Text("text"),
              Text("text"),
              Text("text"),
              Text("text"),
              Text("text")
            ],
          )
        ],
      ),
    ));
  }
}
