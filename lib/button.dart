import 'package:flutter/material.dart';

class ButtonScreen extends StatefulWidget {
  const ButtonScreen({super.key});

  @override
  State<ButtonScreen> createState() => _ButtonScreenState();
}

class _ButtonScreenState extends State<ButtonScreen> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.lightGreenAccent,
        toolbarHeight: 50,
        leading: Icon(Icons.menu),
        title: Text(
          "Button_Screen",
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("$count", style: TextStyle(fontSize: 35),),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 10,
              children: [
                InkWell(
                  onTap: () {
                    count=count+10;
                    setState(() {
                    });
                  },
                  child: Container(
                    height: 30,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(17),
                      color: Colors.blueGrey,
                    ),
                  ),
                ),
                IconButton(
                    onPressed: () {
                      count++;
                      setState(() {});
                    },
                    onLongPress: () {
                      count+=4;
                      setState(() {});
                    },
                    icon: Icon(Icons.add)
                ),
              ],
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 10,
              children: [
                ElevatedButton(
                    onPressed: () {
                      count++;
                      setState(() {}); // Screen Refresh
                    },
                    onLongPress: () {
                      count += 2;
                      setState(() {});
                    },
                    child: Text("+")
                ),
                ElevatedButton(
                    onPressed: () {
                      count++;
                      setState(() {}); // Screen Refresh
                    },
                    child: Text("-")
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
