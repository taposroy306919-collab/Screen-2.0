import 'package:flutter/material.dart';


class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
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
         itemCount: 10,
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
                               image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQy2galtw_kLVREPAY_PEOhPPVDiwEwPCecsvjnIAx4Rd7evK-dsHp1TPU&s=10"))
                       ),
                     ),
                     SizedBox(width: 2,),
                     Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Text(
                           "T-Shirt For Men",
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
                               "Brand : Easy",
                               style: TextStyle(
                                   color: Colors.lightGreen,
                                   fontSize: 15,
                                   fontWeight: FontWeight.bold,
                                   fontStyle: FontStyle.italic
                               ),
                             ),
                             SizedBox(width: 25,),
                             Text(
                               "Category : T-Shirt",
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
                               "Sale_rice : 400tk",
                               style: TextStyle(
                                   color: Colors.black,
                                   fontSize: 12,
                                   fontWeight: FontWeight.bold,
                                   fontStyle: FontStyle.italic
                               ),
                             ),
                             SizedBox(width: 15,),
                             Text(
                               "Regular_price : 500tk",
                               style: TextStyle(
                                   color: Colors.black,
                                   fontSize: 12,
                                   fontWeight: FontWeight.bold,
                                   fontStyle: FontStyle.italic
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
