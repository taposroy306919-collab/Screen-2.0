import 'package:flutter/material.dart';
class TextFieldScreen extends StatefulWidget {
  const TextFieldScreen({super.key});

  @override
  State<TextFieldScreen> createState() => _TextFieldScreenState();
}

class _TextFieldScreenState extends State<TextFieldScreen> {

  TextEditingController email = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.lightGreenAccent,
        toolbarHeight: 50,
        leading: Icon(Icons.menu),
        title: Text(
          "Text Field",
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

      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8,horizontal: 10),
              child: TextField(
                controller: email,
                keyboardType: TextInputType.text,
                onChanged: (c) {
                  print("$c");
                },
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  labelText: "Enter Your E-Mail",
                  //suffixIcon: Icon(Icons.dark_mode),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(2)
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.blueAccent)

                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                      borderSide: BorderSide(color: Colors.red)
                  ),
                  errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(color: Colors.greenAccent)
                    ),
                )
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8,horizontal: 10),
              child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock_clock),
                    labelText: "Enter Your PassWord",
                    suffixIcon: Icon(Icons.remove_red_eye),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(2)
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.blueAccent)

                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                        borderSide: BorderSide(color: Colors.red)
                    ),
                    errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(color: Colors.greenAccent)
                    ),
                  )
              ),
            ),


          ],
        ),
      ),
    );
  }
}
