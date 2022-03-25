import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
          width: MediaQuery
              .of(context)
              .size
              .width * 0.75,
          color: Colors.white,
          child: Column(
            children: [
              Column(
                children: [
                  DrawerTop(),
                  Divider(color: Colors.black),
                  DrawerAction("Donate us"),
                  DrawerAction("Settings"),
                ],
              )
            ],
          ),
        ));
  }
}

class DrawerTop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(left: 10),
          child: Text("Pool"),
        ),
        Container(
          margin: EdgeInsets.only(left: 10),
          child: DropdownButton<String>(items: [
            DropdownMenuItem(child: Text("Ethermine")),
          ], onChanged: (item) => {}),
        )
      ],
    );
  }
}

class DrawerAction extends StatelessWidget {

  DrawerAction(this.title);

  String title = "";

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.settings,
          size: 24,
        ),
        Text(title)
      ],
    );
  }

}
