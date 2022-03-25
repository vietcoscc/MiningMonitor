import 'package:flutter/material.dart';

class MainAppBar extends AppBar {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text("Ethermine"),
      actions: [
        DropdownButtonHideUnderline(
            child: DropdownButton<String>(
          value: "H)H))H",
          items: const [
            DropdownMenuItem(
              child: Text("H)H))H"),
              value: "H)H))H",
            ),
            DropdownMenuItem(child: Text("1111"))
          ],
          onChanged: (items) {},
        )),
      ],
    );
  }
}
