import 'package:flutter/material.dart';

class GridviewBuilderScreen extends StatefulWidget {
  const GridviewBuilderScreen({super.key});

  @override
  State<GridviewBuilderScreen> createState() => _GridviewBuilderScreenState();
}

class _GridviewBuilderScreenState extends State<GridviewBuilderScreen> {

  List fruits = [
    {
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTen3j_C-JWJwT4D_e_AIoFXEglmid26PGHuhqE_xe7JE2QJZ3lDaMb_Dw&s=10",
      "name":
          "Green Kashmiri Apple Version 2.0", //Name boro Kore likhchi text overflow bujhar jonno
      "Sale_price": 200,
      "Reg_price":250,
    },
    {
      "image":
          "https://fruitique.in/cdn/shop/products/raw_banana_1500_x_1500_750x810.jpg?v=1632308857",
      "name": "Green Banana Version 2.0",
      "Sale_price": 200,
      "Reg_price":250,
    },
    {
      "image":
          "https://www.santarome.fr/cdn/shop/files/Orange_douce_4a9fa6d1-460b-41e8-9332-9c60ac5b5793_500x.png?v=1760358454",
      "name": "Orange",
      "Sale_price": 200,
      "Reg_price":250,
    },
    {
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQD6TWxKYbCQsM5icGhAaAe_-y66Vbz7r6UmgoVTM_gsw&s=10",
      "name": "Green Mango original Rajshahi Fruits",
      "Sale_price": 200,
      "Reg_price": 250,
    },
    {
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBT5fWgTleIuhvifFT57Bv16Uy1-OSeiuDaE7sFACJMhqsLH9tv6OrWLui&s=10",
      "name": "Pineapple",
      "Sale_price": 200,
      "Reg_price":250,
    },
    {
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-bufRiR71YgSaIwbLtskU_LxYEHVrpCqfDtkyAQlevk265Hc70fIdNO1j&s=10",
      "name": "Grapes",
      "Sale_price": 200,
      "Reg_price":250,
    },
    {
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEIgKIvbx05-WE6sjvTLGcnl32B5hSYcUMVr1yXO_mAto7yn-NzKLtNo1P&s=10",
      "name": "Strawberry",
      "Sale_price": 200,
      "Reg_price":250,
    },
    {
      "image":
          "https://greenharvest.com.au/cdn/shop/files/Watermelon_All_Sweet.jpg?v=1739766671&width=1500",
      "name": "Watermelon",
      "Sale_price": 200,
      "Reg_price":250,
    },
    {
      "image":
          "https://img.drz.lazcdn.com/static/bd/p/7fcc59094e2af90d673a8c994e08fe41.jpg_720x720q80.jpg",
      "name": "Guava",
      "Sale_price": 200,
      "Reg_price":250,
    },
    {
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTen3j_C-JWJwT4D_e_AIoFXEglmid26PGHuhqE_xe7JE2QJZ3lDaMb_Dw&s=10",
      "name":
          "Green Kashmiri Apple Version 2.0", //Name boro Kore likhchi text overflow bujhar jonno
      "Sale_price": 200,
      "Reg_price":250,
    },
    {
      "image":
          "https://fruitique.in/cdn/shop/products/raw_banana_1500_x_1500_750x810.jpg?v=1632308857",
      "name": "Green Banana Version 2.0",
      "Sale_price": 200,
      "Reg_price":250,
    },
    {
      "image":
          "https://www.santarome.fr/cdn/shop/files/Orange_douce_4a9fa6d1-460b-41e8-9332-9c60ac5b5793_500x.png?v=1760358454",
      "name": "Orange",
      "Sale_price": 200,
      "Reg_price":250,
    },
    {
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQD6TWxKYbCQsM5icGhAaAe_-y66Vbz7r6UmgoVTM_gsw&s=10",
      "name": "Green Mango original Rajshahi Fruits",
      "Sale_price": 200,
      "Reg_price":250,
    },
    {
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBT5fWgTleIuhvifFT57Bv16Uy1-OSeiuDaE7sFACJMhqsLH9tv6OrWLui&s=10",
      "name": "Pineapple",
      "Sale_price": 200,
      "Reg_price":250,
    },
    {
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-bufRiR71YgSaIwbLtskU_LxYEHVrpCqfDtkyAQlevk265Hc70fIdNO1j&s=10",
      "name": "Grapes",
      "Sale_price": 200,
      "Reg_price":250,
    },
    {
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEIgKIvbx05-WE6sjvTLGcnl32B5hSYcUMVr1yXO_mAto7yn-NzKLtNo1P&s=10",
      "name": "Strawberry",
      "Sale_price": 200,
      "Reg_price":250,
    },
    {
      "image":
          "https://greenharvest.com.au/cdn/shop/files/Watermelon_All_Sweet.jpg?v=1739766671&width=1500",
      "name": "Watermelon",
      "Sale_price": 200,
      "Reg_price":250,
    },
    {
      "image":
          "https://img.drz.lazcdn.com/static/bd/p/7fcc59094e2af90d673a8c994e08fe41.jpg_720x720q80.jpg",
      "name": "Guava",
      "Sale_price": 200,
      "Reg_price":250,
    },
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
          "GridviewBuilderScreen",
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
          childAspectRatio: 0.65,
        ),
        itemBuilder: (context, index) {
          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            elevation: 4,
            clipBehavior: Clip.antiAlias,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(12),
                    ),
                    image: DecorationImage(
                      image: NetworkImage("${fruits[index]["image"]},"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                //Text("${fruits[index]["name"]},", overflow: TextOverflow.ellipsis, )
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${fruits[index]["name"]},",
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "৳ ${fruits[index]["Sale_price"]}",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                            ),
                          ),
                          SizedBox(width: 25,),
                          Text(
                              "৳ ${fruits[index]["Reg_price"]}",
                            style: TextStyle(
                              decoration: TextDecoration.lineThrough,
                              color: Colors.grey,
                            ),
                          ),

                        ],
                      ),
                      SizedBox(height: 5),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //
                      //   children: [
                      //
                      //     Text(
                      //       "Description",
                      //       style: TextStyle(
                      //         fontSize: 16,
                      //         fontWeight: FontWeight.w500,
                      //       ),
                      //     ),
                      //
                      //     Icon(Icons.keyboard_arrow_down),
                      //   ],
                      // ),
                      // SizedBox(height: 5),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.blue, // Border color
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Description",
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                              ),
                            ),

                            Icon(Icons.keyboard_arrow_down),
                          ],
                        ),
                      ),
                      SizedBox(height: 3),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue, // Button color
                              foregroundColor: Colors.white, // Text/Icon color
                            ),
                            child: Text("ADD to Card")
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
