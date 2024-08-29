import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber[500],

        actions: [
          
          IconButton(
            iconSize: 30,
            color: Colors.white,
            onPressed: () {
              Navigator.of(context).pushNamed('page4');
            },
            icon: const Icon(
              Icons.arrow_forward,
            ),
          ),
        ],
        ),
        body: SafeArea(
            child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    onPressed: () {
                      setState(() {
                        _count++;
                      });
                    },
                    child: Text("Count Up"),
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        _count--;
                      });
                    },
                    child: Text("Count Down"),
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        _count=0;
                      });
                    },
                    child: Text("Reset"),
                  ),
                  
                ],
              ),
              Text(
                _count.toString(),
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        )));
  }
}
