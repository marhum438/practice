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
      backgroundColor: Color.fromARGB(255, 255, 253, 253),
      drawer: Hiddendrawer(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 35.0, vertical: 25),
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
                  color: Color.fromARGB(255, 255, 253, 253),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade500,
                        offset: Offset(4.0, 4.0),
                        blurRadius: 5.0,
                        spreadRadius: 0.5),
                  ],
                  border: Border.all(width: 0.3, color: Colors.black)),
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
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  stack("Pizza", Colors.yellow),
                  stack("Burger", Color.fromARGB(255, 255, 253, 253)),
                  stack("ice-cream", Color.fromARGB(255, 255, 253, 253)),
                  stack("Donet", Color.fromARGB(255, 255, 253, 253)),
                 
                 
                  stack("Burger", Color.fromARGB(255, 255, 253, 253)),
                  stack("ice-cream", Color.fromARGB(255, 255, 253, 253)),
                  stack("Donet", Color.fromARGB(255, 255, 253, 253)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget stack(var text, var color) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Stack(
      children: [
        Container(
          height: 120,
          width: 75,
          decoration: BoxDecoration(
              border: Border.all(width: 0.3, color: Colors.black),
              borderRadius: BorderRadius.circular(50),
              color: color,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade500,
                    offset: Offset(3.0, 3.0),
                    blurRadius: 5.0,
                    spreadRadius: 0.5),
              ]),
        ),
        Positioned(
          top: 5,
          //bottom: 9,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 60,
                width: 75,
                decoration: BoxDecoration(
                    border: Border.all(width: 0.3, color: Colors.black),
                    shape: BoxShape.circle,
                    color: Color.fromARGB(255, 255, 253, 253),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade500,
                          offset: Offset(2.0, 2.0),
                          blurRadius: 8.0,
                          spreadRadius: 0.2),
                    ]),
              ),
              SizedBox(
                height: 15,
              ),
              Text(text)
            ],
          ),
        ),
      ],
    ),
  );
}
