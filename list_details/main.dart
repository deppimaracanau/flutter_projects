import 'package:flutter/material.dart';

import 'list_page.dart';

void main() {
  runApp(const flutter_samples());

class MainAnimations extends StatefulWidget {
  @override
  MainAnimationsState createState() {
    return MainAnimationsState();
  }
}

class MainAnimationsState extends State<MainAnimations> {
  onButtonTap(Widget page) {
    Navigator.push(
        context, MaterialPageRoute(builder: (BuildContext context) => page));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Animations"),
      ),
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: ListView(
          children: <Widget>[
            MyMenuButton(
              title: 'List - Detail Page',
              actionTap: () {
                onButtonTap(ListPage());
              },
            ),
          ],
        ),
      ),
    );
  }

  MyMenuButton({required String title, required Null Function() actionTap}) {}
}
