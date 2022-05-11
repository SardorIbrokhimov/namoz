import 'package:flutter/material.dart';
import 'package:namoz/pages/forMan.dart';
import 'package:namoz/pages/forWoman.dart';
import 'package:namoz/pages/home_page.dart';
import 'package:namoz/pages/side_bar.dart';
import 'package:namoz/pages/tasbeh.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      routes: {
        HomePage.id: (context) => HomePage(),
        SideBar.id: (context) => SideBar(),
        TasbehPage.id: (context) => TasbehPage(),
        ForMan.id: (context) => ForMan(),
        ForWoman.id: (context) => ForWoman(),
      },
    );
  }
}
