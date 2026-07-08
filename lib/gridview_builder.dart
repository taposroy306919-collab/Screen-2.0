import 'package:flutter/material.dart';

class GridviewBuilderScreen extends StatefulWidget {
  const GridviewBuilderScreen({super.key});

  @override
  State<GridviewBuilderScreen> createState() => _GridviewBuilderScreenState();
}

class _GridviewBuilderScreenState extends State<GridviewBuilderScreen> {

  List fruits = [
  {
  "image": "https://picsum.photos/300?random=101",
  "name": "Green Kashmiri Apple Version 2.0" //Name boro Kore likhchi text overflow bujhar jonno
  },
  {
  "image": "https://picsum.photos/300?random=102",
  "name": "Green Banana Version 2.0"
  },
  {
  "image": "https://picsum.photos/300?random=103",
  "name": "Orange"
  },
  {
  "image": "https://picsum.photos/300?random=104",
  "name": "Green Mango original Rajshahi Fruits"
  },
  {
  "image": "https://picsum.photos/300?random=105",
  "name": "Pineapple"
  },
  {
  "image": "https://picsum.photos/300?random=106",
  "name": "Grapes"
  },
  {
  "image": "https://picsum.photos/300?random=107",
  "name": "Strawberry"
  },
  {
  "image": "https://picsum.photos/300?random=108",
  "name": "Watermelon"
  },
  {
  "image": "https://picsum.photos/300?random=109",
  "name": "Papaya"
  },
  {
  "image": "https://picsum.photos/300?random=110",
  "name": "Guava"
  },
  {
  "image": "https://picsum.photos/300?random=111",
  "name": "Kiwi"
  },
  {
  "image": "https://picsum.photos/300?random=112",
  "name": "Pear"
  },
  {
  "image": "https://picsum.photos/300?random=113",
  "name": "Peach"
  },
  {
  "image": "https://picsum.photos/300?random=114",
  "name": "Cherry"
  },
  {
  "image": "https://picsum.photos/300?random=115",
  "name": "Pomegranate"
  },
  {
  "image": "https://picsum.photos/300?random=116",
  "name": "Lemon"
  },
  {
  "image": "https://picsum.photos/300?random=117",
  "name": "Coconut"
  },
  {
  "image": "https://picsum.photos/300?random=118",
  "name": "Dragon Fruit"
  },
  {
  "image": "https://picsum.photos/300?random=119",
  "name": "Lychee"
  },
  {
  "image": "https://picsum.photos/300?random=120",
  "name": "Jackfruit"
  }
  ];

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
        itemCount: fruits.length,
        //physics: BouncingScrollPhysics(),
        padding: EdgeInsets.all(5),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
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
              Text("${fruits[index]["name"]},", overflow: TextOverflow.ellipsis, )
            ],
          );
        },
      ),
    );
  }
}
