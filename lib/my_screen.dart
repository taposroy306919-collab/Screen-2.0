import 'package:flutter/material.dart';

class MyScreen extends StatefulWidget {
  const MyScreen({super.key});

  @override
  State<MyScreen> createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.grey,
        leading: Icon(Icons.menu),
        title: Text(
            "Screen Customize"
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
        itemCount: students.length,
          itemBuilder: (context, index) {
            return ListTile(
              tileColor: index%2 == 0  ? Colors.orange : Colors.teal,
              leading: CircleAvatar(
                child: Text("${students[index]["id"]}"),
              ),
              title: Text("${students[index]["name"]}"),
              subtitle: Text("${students[index]["email"]}"),
              trailing: Text("${students[index]["dept"]}"),
            );
          },
      ),
    );
  }

  List<Map<String, String>> students = [
    {
      "id": "S001",
      "name": "Rahim Uddin",
      "email": "rahim001@gmail.com",
      "dept": "CSE",
    },
    {
      "id": "S002",
      "name": "Karim Ahmed",
      "email": "karim002@gmail.com",
      "dept": "EEE",
    },
    {
      "id": "S003",
      "name": "Nusrat Jahan",
      "email": "nusrat003@gmail.com",
      "dept": "BBA",
    },
    {
      "id": "S004",
      "name": "Sabbir Hossain",
      "email": "sabbir004@gmail.com",
      "dept": "CSE",
    },
    {
      "id": "S005",
      "name": "Ayesha Akter",
      "email": "ayesha005@gmail.com",
      "dept": "ENG",
    },
    {
      "id": "S006",
      "name": "Tanvir Hasan",
      "email": "tanvir006@gmail.com",
      "dept": "EEE",
    },
    {
      "id": "S007",
      "name": "Mim Akter",
      "email": "mim007@gmail.com",
      "dept": "CSE",
    },
    {
      "id": "S008",
      "name": "Shakil Ahmed",
      "email": "shakil008@gmail.com",
      "dept": "BBA",
    },
    {
      "id": "S009",
      "name": "Rafiul Islam",
      "email": "rafiul009@gmail.com",
      "dept": "CSE",
    },
    {
      "id": "S010",
      "name": "Faria Khan",
      "email": "faria010@gmail.com",
      "dept": "LAW",
    },
  ];
}

