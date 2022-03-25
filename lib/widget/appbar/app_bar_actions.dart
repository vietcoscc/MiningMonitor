import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppBarAction extends StatelessWidget {
  var items = ["ETH", "ZEC", "ETC", "BEAM", "RVN", "ERG"];
  var images = [
    "assets/images/svgexport-2.png",
    "assets/images/svgexport-5.png",
    "assets/images/svgexport-6.png",
    "assets/images/Beam Logo.png",
    "assets/images/rvn.png",
    "assets/images/svgexport-7.png"
  ];

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          dropdownColor: Colors.blue,
      value: items[0],
      icon: Icon(
        Icons.keyboard_arrow_down,
        color: Colors.white,
      ),
      items: items
          .asMap()
          .map((i, item) => MapEntry(
              i,
              DropdownMenuItem(
                child: Row(
                  children: [
                    ImageIcon(
                      AssetImage(images[i]),
                      color: Colors.orange,
                      size: 24.0,
                    ),
                    Container(
                      child: Text(item, style: TextStyle(color: Colors.white)),
                      margin: EdgeInsets.only(left: 5),
                    ),
                  ],
                ),
                value: item,
              )))
          .values
          .toList(),
      onChanged: (items) {},
    ));
  }
}
