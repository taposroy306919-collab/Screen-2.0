import 'package:flutter/material.dart';


class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {

  List p =[
    {
      "id": 1,
      "name": "Classic Cotton T-Shirt",
      "brand": "EasyWear",
      "category": "T-Shirt",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMoPtmSY8ONr6j3jdcjmJME53oOkrwQTYUxudqKpN6Yf1hyGasi-_FvYI&s=10",
      "regular_price": 799,
      "sale_price": 649
    },
    {
      "id": 2,
      "name": "Oversized Graphic T-Shirt",
      "brand": "Urban Style",
      "category": "T-Shirt",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQy2galtw_kLVREPAY_PEOhPPVDiwEwPCecsvjnIAx4Rd7evK-dsHp1TPU&s=10",
      "regular_price": 999,
      "sale_price": 849
    },
    {
      "id": 3,
      "name": "Polo T-Shirt",
      "brand": "Polo Club",
      "category": "T-Shirt",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkPkg1kFDq0L0eygN4S18ApsE-2vD0mJEuhhVFNz7bCg8FqMa4AaRqlMHL&s=10",
      "regular_price": 1299,
      "sale_price": 1099
    },
    {
      "id": 4,
      "name": "Round Neck T-Shirt",
      "brand": "Fashion Hub",
      "category": "T-Shirt",
      "image": "https://wrogn.com/cdn/shop/files/WUTS1214S_1.jpg?v=1754396693",
      "regular_price": 699,
      "sale_price": 599
    },
    {
      "id": 5,
      "name": "V-Neck T-Shirt",
      "brand": "StyleFit",
      "category": "T-Shirt",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMoPtmSY8ONr6j3jdcjmJME53oOkrwQTYUxudqKpN6Yf1hyGasi-_FvYI&s=10",
      "regular_price": 899,
      "sale_price": 749
    },
    {
      "id": 6,
      "name": "Full Sleeve T-Shirt",
      "brand": "Denim Co.",
      "category": "T-Shirt",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkPkg1kFDq0L0eygN4S18ApsE-2vD0mJEuhhVFNz7bCg8FqMa4AaRqlMHL&s=10",
      "regular_price": 1199,
      "sale_price": 999
    },
    {
      "id": 7,
      "name": "Striped Cotton T-Shirt",
      "brand": "Trendy",
      "category": "T-Shirt",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQy2galtw_kLVREPAY_PEOhPPVDiwEwPCecsvjnIAx4Rd7evK-dsHp1TPU&s=10",
      "regular_price": 999,
      "sale_price": 849
    },
    {
      "id": 8,
      "name": "Sports Dry Fit T-Shirt",
      "brand": "ActivePro",
      "category": "T-Shirt",
      "image": "https://wrogn.com/cdn/shop/files/WUTS1214S_1.jpg?v=1754396693",
      "regular_price": 1499,
      "sale_price": 1299
    },
    {
      "id": 9,
      "name": "Printed Casual T-Shirt",
      "brand": "Young Fashion",
      "category": "T-Shirt",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMoPtmSY8ONr6j3jdcjmJME53oOkrwQTYUxudqKpN6Yf1hyGasi-_FvYI&s=10",
      "regular_price": 899,
      "sale_price": 699
    },
    {
      "id": 10,
      "name": "Premium Basic T-Shirt",
      "brand": "Gentle Wear",
      "category": "T-Shirt",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkPkg1kFDq0L0eygN4S18ApsE-2vD0mJEuhhVFNz7bCg8FqMa4AaRqlMHL&s=10",
      "regular_price": 1099,
      "sale_price": 949
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.grey,
        leading: Icon(Icons.menu),
        title: Text(
            "Product Screen Customize"
        ),
        actions: [
          Container(
            width: 140,
            height: 35,
            margin: EdgeInsets.only(right: 10),
            padding: EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search...",
                border: InputBorder.none,
                icon: Icon(Icons.search),
              ),
            ),
          )
        ],
      ),
       body: ListView.builder(
         itemCount: p.length,
           itemBuilder: (context, index) {
             return Card(
               child: SizedBox(
                 height: 150,
                 width: double.infinity,
                 child: Row(
                   children: [
                     Container(
                       height: 135,
                       width: 135,
                       decoration: BoxDecoration(
                           image: DecorationImage(
                               fit: BoxFit.fill,
                               image: NetworkImage("${p[index]["image"]}")
                           )
                       ),
                     ),
                     SizedBox(width: 2,),
                     Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Text(
                           "${p[index]["name"]}",
                           style: TextStyle(
                               color: Colors.black,
                               fontSize: 24,
                               fontWeight: FontWeight.bold,
                               fontStyle: FontStyle.italic
                           ),
                         ),
                         SizedBox(height: 5,),
                         Row(
                           children: [
                             Text(
                               "${p[index]["brand"]}",
                               style: TextStyle(
                                   color: Colors.lightGreen,
                                   fontSize: 15,
                                   fontWeight: FontWeight.bold,
                                   fontStyle: FontStyle.italic
                               ),
                             ),
                             SizedBox(width: 25,),
                             Text(
                               "${p[index]["category"]}",
                               style: TextStyle(
                                   color: Colors.lightGreen,
                                   fontSize: 15,
                                   fontWeight: FontWeight.bold,
                                   fontStyle: FontStyle.italic
                               ),
                             ),
                           ],
                         ),
                         SizedBox(height: 15,),
                         Row(
                           children: [
                             Text(
                               "Discount_price: ${p[index]["sale_price"]}",
                               style: TextStyle(
                                   color: Colors.black,
                                   fontSize: 12,
                                   fontWeight: FontWeight.bold,
                                   fontStyle: FontStyle.italic
                               ),
                             ),
                             SizedBox(width: 15,),
                             Text(
                               "Regular_price : ${p[index]["regular_price"]}",
                               style: TextStyle(
                                   color: Colors.black,
                                   fontSize: 12,
                                   fontWeight: FontWeight.bold,
                                   fontStyle: FontStyle.italic,
                                   decoration: TextDecoration.lineThrough
                               ),
                             ),
                           ],
                         ),
                       ],
                     ),
                     //SizedBox(width: 15,),
                     Spacer(),
                     CircleAvatar(
                       radius: 30,
                       child: Icon(
                         Icons.add,
                         color: Colors.green,
                       ),
                     )
                   ],
                 ),
               ),
             );
           },
       )
    );
  }
}
