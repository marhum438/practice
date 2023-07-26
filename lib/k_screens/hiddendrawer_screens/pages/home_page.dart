import 'package:flutter/material.dart';

import '../hiden_drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Hiddendrawer(),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  foregroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSV8ZLVPFoYR_fqP7XahB5swaQuXmEJ6jb2Nw&usqp=CAU"),
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  "Hi,Anni",
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 25),
                ),
              ],
            ),
             SizedBox(
                  height: 30,
                ),
            Text(
              "What is on your mind?",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
            ),
              SizedBox(
                  height: 30,
                ),
            Container(
              height: 40,
              width: double.infinity,
              child: Row(
                children: [
                  Icon(Icons.search_off_outlined),
                  // TextField(
                  //   maxLength: 500,
                  // )
                ],
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(width: 2, color: Colors.yellow)),
            ),
             SizedBox(
                  height: 30,
                ),
          ],
        ),
      ),
    );
  }
}
