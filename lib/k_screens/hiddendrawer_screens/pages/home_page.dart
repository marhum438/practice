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
      backgroundColor: Color.fromARGB(255, 206, 206, 206),
      drawer: Hiddendrawer(),
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
              height: 15,
            ),
            Container(
              height: 40,
              width: double.infinity,
              decoration: BoxDecoration(
                color:  Color.fromARGB(255, 206, 206, 206),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade500,
                        offset: Offset(4.0, 4.0),
                        blurRadius: 5.0,
                        spreadRadius: 0.5),
                    BoxShadow(
                        color: Colors.white,
                        offset: Offset(-4.0, -4.0),
                        blurRadius: 5.0,
                        spreadRadius: 1.0)
                  ],
                //  border: Border.all(width: 2, color: Colors.yellow)
                  ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 9.0),
                child: Row(
                  children: [
                    Icon(Icons.search_outlined),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Type here", border: InputBorder.none),
                      ),
                    ),
                  ],
                ),
              ),
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
