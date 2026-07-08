import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 45,
        backgroundColor: Colors.tealAccent.shade100,
        leading: Icon(Icons.arrow_back),
        title: Text("Sign Up Page"),
        actions: [
          Container(
            height: 30,
            width: 120,
            margin: EdgeInsets.only(right: 10),
            padding: EdgeInsets.only(bottom: 7),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search",
                border: InputBorder.none,
                icon: Icon(Icons.search)
              ),
            )
          ),
        ],
      ),
      body: Center(
        child: ListView(
          children: [
            SizedBox(height: 10,),
            Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                //color: Colors.green,
                image: DecorationImage(
                    image: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS24NptSW8isPV4jwh13xMZ32-aGo2XR4GrPse24icBuTvq0LZXG1t-2Qcq&s=10"
                    ),
                   fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Center(
                child: Text(
                  "Hello World",
                  style: TextStyle(
                      color: Colors.greenAccent,
                      fontSize: 30),
                  ),
              )
              ],
            ),
            SizedBox(height: 3,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    "Hey, Welcome to My First App, This a Learning App",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 10),
                  ),
                )
              ],
            ),
            SizedBox(height: 3,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    "Here you Learn About ICT?CSE Basic ",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 10),
                  ),
                )
              ],
            ),
            SizedBox(height: 3,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 350,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent, // Button color
                      foregroundColor: Colors.white, // Text color
                    ),
                    onPressed: () {},
                    child: Text("Log In"),
                  ),
                )
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 350,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent, // Button color
                      foregroundColor: Colors.white, // Text color
                    ),
                    onPressed: () {},
                    child: Text("Sign Up"),
                  ),
                )
              ],
            ),
            SizedBox(height: 60,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    "Sign Up Anyway?Error Exception",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 10),
                  ),
                )
              ],
            ),
            SizedBox(height: 6,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      height: 50,
                      width: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://images.unsplash.com/photo-1662070479020-73f77887c87c?fm=jpg&q=60&w=3000&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8ZmFjZWJvb2slMjBsb2dvfGVufDB8fDB8fHww"
                            ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(width: 15,),
                Column(
                  children: [
                    Container(
                      height: 50,
                      width: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://c8.alamy.com/comp/BN4K89/gmail-logo-BN4K89.jpg"
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(width: 15,),
                Column(
                  children: [
                    Container(
                      height: 50,
                      width: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://images.unsplash.com/photo-1661953118591-2f5be524698e?fm=jpg&q=60&w=3000&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fGluc3RhZ3JhbSUyMGljb258ZW58MHx8MHx8fDA%3D"
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      )
    );
  }
}
