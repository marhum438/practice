import 'package:flutter/material.dart';

import 'package:flutter_application_1/test.dart';
class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Color.fromARGB(255, 19, 212, 28),
                ),
              ),
            ),
          ),
    
          Expanded(
            child: TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.black)),
                      labelText: "       Enter Task name",
                      border: InputBorder.none,
                    ),
                  ),
          ),
Expanded(
            child: TextField(
               cursorColor: Colors.black,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                      //         color: Color.fromARGB(255, 238, 234, 234)
                      )
                      ),
                      labelText: "       Enter Task name",
                     
                    //  border: InputBorder.none,
                    ),
                  ),
          ),


        ],
      ),
    );
  }
}
