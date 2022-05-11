import 'package:flutter/material.dart';
import 'package:namoz/pages/home_page.dart';
import 'package:namoz/pages/side_bar.dart';

class ForMan extends StatefulWidget {
  static const String id = "for_man";

  const ForMan({Key? key}) : super(key: key);

  @override
  State<ForMan> createState() => _ForManState();
}

class _ForManState extends State<ForMan> {
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
        title: Text("Namoz(Erkaklar uchun)"),
        actions: [
          SizedBox(
            width: 20,
          ),
        ],
      ),
    );
  }
}
