import 'package:flutter/material.dart';
import 'package:namoz/pages/forMan.dart';
import 'package:namoz/pages/forWoman.dart';
import 'package:namoz/pages/side_bar.dart';

class HomePage extends StatefulWidget {
  static const String id = "home_page";

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text("Bosh Sahifa"),
        actions: [
          SizedBox(
            width: 20,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.info_outline),
          ),
        ],
      ),
      drawer: SideBar(),
      body: Container(
        child: ListView(
          children: [
            //Erkaklar uchun
            GestureDetector(
              child: Container(
                // padding: EdgeInsets.only(left: 20,top: 10,bottom: 10),
                height: 60,
                width: double.infinity,
                color: Colors.greenAccent,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, top: 20, bottom: 10),
                  child: Stack(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Erkaklar uchun",
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [Icon(Icons.navigate_next)],
                      ),
                    ],
                  ),
                ),
              ),
              onTap: () {
                Navigator.pushReplacementNamed(context, ForMan.id);
              },
            ),
            //Diveder
            Container(
              height: 1,
            ),
            //Ayollar uchun
            GestureDetector(
              child: Container(
                // padding: EdgeInsets.only(left: 20,top: 10,bottom: 10),
                height: 60,
                width: double.infinity,
                color: Colors.greenAccent,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, top: 20, bottom: 10),
                  child: Stack(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Ayollar uchun",
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [Icon(Icons.navigate_next)],
                      ),
                    ],
                  ),
                ),
              ),
              onTap: () {
                Navigator.pushReplacementNamed(context, ForWoman.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}
