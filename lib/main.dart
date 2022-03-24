import 'package:flutter/material.dart';
import 'package:mining_monitor/drawer.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "App",
        home: Scaffold(
          appBar: AppBar(
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
          ),
          drawer: MainDrawer(),
          body: SafeArea(
            child: Container(
              color: Colors.white,
              child: Center(
                  child: Column(
                children: const [
                  Text("Address"),
                ],
              )),
            ),
          ),
        ));
  }
}
