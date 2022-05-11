import 'package:flutter/material.dart';

import 'home_page.dart';

class ForWoman extends StatefulWidget {
  static const String id = "for_woman";

  const ForWoman({Key? key}) : super(key: key);

  @override
  State<ForWoman> createState() => _ForWomanState();
}

class _ForWomanState extends State<ForWoman> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, HomePage.id);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        backgroundColor: Colors.lightGreen,
        title: Text("Namoz(Ayollar uchun)"),
        actions: [
          SizedBox(
            width: 20,
          ),
        ],
      ),
    );
  }
}
