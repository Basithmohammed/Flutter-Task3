import 'package:flutter/material.dart';
import 'package:flutter_project_3/page1.dart';
import 'package:flutter_project_3/page2.dart';
import 'package:flutter_project_3/page3.dart';
import 'package:flutter_project_3/page4.dart';
import 'package:flutter_project_3/page5.dart';
import 'package:flutter_project_3/page6.dart';
import 'package:flutter_project_3/page7.dart';
import 'package:flutter_project_3/page8.dart';

main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'counterScreen': (context) => Page2(),
        'page3':(context)=>Page3(),
        'page4':(context)=> Page4(),
        'page5':(context)=> Page5(),
        'page6':(context)=> Page6(),
        'page7':(context)=> Page7(),
        'page8':(context)=> Page8(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color.fromARGB(255, 56, 3, 66),
        ),
        useMaterial3: true,
      ),
      home: Home(),
    );
  }
}
