import 'package:flutter/material.dart';
import 'package:namoz/pages/home_page.dart';
import 'package:namoz/pages/tasbeh.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';

class SideBar extends StatefulWidget {
  static const String id = "side_bar";

  const SideBar({Key? key}) : super(key: key);

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.green,
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(""),
              accountEmail: Text(""),
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    "https://avatars.mds.yandex.net/i?id=861e1060f17f592bd2d3fb30cbf2e648-5870056-images-thumbs&n=13",
                  ),
                ),
              ),
            ),
            //Home page
            ListTile(
              title: Text(
                "Bosh Sahifa",
                style: TextStyle(color: Colors.white),
              ),
              leading: Icon(
                Icons.home,
                color: Colors.white,
              ),
              onTap: () {
                Navigator.pushReplacementNamed(context, HomePage.id);
              },
            ),
            //Tasbeh Page
            ListTile(
              title: Text(
                "Tasbeh",
                style: TextStyle(color: Colors.white),
              ),
              leading: Icon(
                Icons.add_circle_outline,
                color: Colors.white,
              ),
              onTap: () {
                Navigator.pushReplacementNamed(context, TasbehPage.id);
              },
            ),
            //Duolar Page
            ListTile(
              title: Text(
                "Duolar",
                style: TextStyle(color: Colors.white),
              ),
              leading: Icon(
                Icons.message_outlined,
                color: Colors.white,
              ),
            ),
            //Namoz vaqtlari page
            ListTile(
              title: Text(
                "Namoz Vaqtlari",
                style: TextStyle(color: Colors.white),
              ),
              leading: Icon(
                Icons.timer,
                color: Colors.white,
              ),
              onTap: () {
                _forUrl("https://namozvaqti.uz/");
              },
            )
          ],
        ),
      ),
    );
  }
}

Future<void> _forUrl(String urlString) async {
  if (await canLaunch(urlString)) {
    await launch(urlString);
  } else {}
}
