import 'package:flutter/material.dart';
import 'package:mining_monitor/widget/appbar/app_bar_actions.dart';
import 'package:mining_monitor/widget/appbar/app_bar_title.dart';
import 'package:mining_monitor/widget/drawer.dart';

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
          title: AppBarTitle(),
          actions: [AppBarAction()],
        ),
        drawer: MainDrawer(),
        body: SafeArea(
          child: Container(
              color: Colors.white,
              child: Column(children: [
                Text("Address"),
                Row(
                  children: [
                    Text("Unpaid Balance"),
                    Text("0.005 ETH"),
                  ],
                ),
                Row(children: [
                  Text("Unpaid Balance"),
                  Text("0.005 ETH"),
                  Text("Daily"),
                ]),
                Row(
                  children: [Text("HashRate")],
                ),
                Row(
                  children: [
                    Expanded(
                        child: Column(
                      children: [Text("Current"), Text("100MH/s")],
                    )),
                    Expanded(
                        child: Column(
                      children: [Text("Current"), Text("100MH/s")],
                    )),
                    Expanded(
                        child: Column(
                      children: [Text("Current"), Text("100MH/s")],
                    )),
                  ],
                )
              ])),
        ),
      ),
    );
  }
}
