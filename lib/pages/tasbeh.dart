import 'package:flutter/material.dart';
import 'package:namoz/pages/side_bar.dart';



class TasbehPage extends StatefulWidget {
  static const String id = "first_page";

  const TasbehPage({Key? key}) : super(key: key);

  @override
  State<TasbehPage> createState() => _TasbehPageState();
}

class _TasbehPageState extends State<TasbehPage> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text("Tasbeh"),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  count = 0;
                });
              },
              icon: Icon(
                Icons.refresh,
                size: 33,
              )),


          SizedBox(
            width: 20,
          ),
        ],
      ),
      drawer: SideBar(),
      body: Center(
        child: Text(
          count.toString(),
          style: TextStyle(fontSize: 30),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightGreenAccent,

        onPressed: () {
          setState(() {
            if(count==33){

              count=0;
            }
            count++;
          });
        },
        child: Icon(Icons.add,color: Colors.black,),
      ),
    );
  }
}
