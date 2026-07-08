
import 'package:flutter/material.dart';

class GridViewScreen extends StatefulWidget {
  const GridViewScreen({super.key});

  @override
  State<GridViewScreen> createState() => _GridViewScreenState();
}

class _GridViewScreenState extends State<GridViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.lightGreenAccent,
        toolbarHeight: 50,
        leading: Icon(Icons.menu),
        title: Text(
          "Grid_View",
          style: TextStyle(
            color: Colors.deepPurple,
          ),
        ),
        actions: [
          Container(
            height: 30,
            width: 120,
            margin: EdgeInsets.only(right: 5),
            //color: Colors.white,
            //padding: EdgeInsets.symmetric(vertical: 2),
            padding: EdgeInsets.only(bottom: 5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white
            ),
            child: TextField(
                decoration: InputDecoration(
                    hintText: "Search",
                    border: InputBorder.none,
                    icon: Icon(Icons.search)
                )
            ),
          ),
        ],
      ),
      body: GridView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.all(7),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 9,
            crossAxisSpacing: 9,
          childAspectRatio: 16/9
        ),
        children: [
          Container(
            height: 45,
            width: 60,
            color: Colors.amber,
          ),
          Container(
            height: 45,
            width: 60,
            color: Colors.green,
          ),
          Container(
            height: 45,
            width: 60,
            color: Colors.red,
          ),
          Container(
            height: 45,
            width: 60,
            color: Colors.teal,
          ),
          Container(
            height: 45,
            width: 60,
            color: Colors.pinkAccent,
          ),
          Container(
            height: 45,
            width: 60,
            color: Colors.purple,
          ),
          Container(
            height: 45,
            width: 60,
            color: Colors.amber,
          ),
          Container(
            height: 45,
            width: 60,
            color: Colors.green,
          ),
          Container(
            height: 45,
            width: 60,
            color: Colors.red,
          ),
          Container(
            height: 45,
            width: 60,
            color: Colors.pinkAccent,
          ),
        ],
      ),
    );
  }
}
