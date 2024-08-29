import 'package:flutter/material.dart';

class Page9 extends StatelessWidget {
  String lapName, lapImage, lapDescription, lapPrice;
  Page9(
      {super.key,
      required this.lapName,
      required this.lapImage,
      required this.lapDescription,
      required this.lapPrice});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 5, 7, 144),
        title: const Text(
          "Out Page of Laptops",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                width: 200,
                height: 200,
                image: AssetImage(lapImage),
              ),
              Text(style: TextStyle(fontSize: 25), lapName),
              Text(style: TextStyle(fontSize: 20), lapPrice),
              Text(style: TextStyle(fontSize: 18), lapDescription)
            ],
          ),
        ),
      ),
    );
  }
}
