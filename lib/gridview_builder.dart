import 'package:flutter/material.dart';

class GridviewBuilderScreen extends StatefulWidget {
  const GridviewBuilderScreen({super.key});

  @override
  State<GridviewBuilderScreen> createState() => _GridviewBuilderScreenState();
}

class _GridviewBuilderScreenState extends State<GridviewBuilderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Icon(Icons.menu),
        backgroundColor: Colors.lightGreenAccent,
        toolbarHeight: 50,
        title: Text(
          "GridviewBuilderSceen",
          style: TextStyle(color: Colors.deepPurple),
        ),
        actions: [
          Container(
            height: 30,
            width: 120,
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.only(bottom: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search",
                border: InputBorder.none,
                icon: Icon(Icons.search),
              ),
            ),
          ),
        ],
      ),
      body: GridView.builder(
        itemCount: 14,
        //physics: BouncingScrollPhysics(),
        padding: EdgeInsets.all(5),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
          childAspectRatio: .70
        ),
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                height: 200,
                width: 200,
                color: index % 2 == 0 ? Colors.green : Colors.lightGreen,
              ),
              Text("Data")
            ],
          );
        },
      ),
    );
  }
}
