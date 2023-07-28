import 'package:flutter_application_1/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/const.dart';

import 'k_screens/hiddendrawer_screens/hiden_drawer.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: MyColors.yellow,),
home: Hiddendrawer(),
    );
  }
}
