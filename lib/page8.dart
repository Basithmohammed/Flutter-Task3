import 'package:flutter/material.dart';
import 'package:flutter_project_3/page9.dart';

class Page8 extends StatelessWidget {
  Page8({super.key});
  List<Map<String, dynamic>> lap = [
    {
      "title": "Laptop 1",
      "subtitle": "Brand A, 8GB RAM , 256GB SSD",
      "image": "assets/images/html.png",
      "trailing": "\$40000",
    },
    {
      "title": "Laptop 2",
      "subtitle": "Brand B, 8GB RAM , 256GB SSD",
      "image": "assets/images/js.png",
      "trailing": "\$50000",
    },
    {
      "title": "Laptop 3",
      "subtitle": "Brand C, 8GB RAM , 256GB SSD",
      "image": "assets/images/java.png",
      "trailing": "\$30000",
    },
    {
      "title": "Laptop 4",
      "subtitle": "Brand D, 8GB RAM , 256GB SSD",
      "image": "assets/images/php.png",
      "trailing": "\$70000",
    },
    {
      "title": "Laptop 5",
      "subtitle": "Brand E, 16GB RAM , 256GB SSD",
      "image": "assets/images/html.png",
      "trailing": "\$20000",
    },
    {
      "title": "Laptop 6",
      "subtitle": "Brand A, 32GB RAM , 256GB SSD",
      "image": "assets/images/dart.png",
      "trailing": "\$10000",
    },
    {
      "title": "Laptop 7",
      "subtitle": "Brand X, 16GB RAM , 256GB SSD",
      "image": "assets/images/js.png",
      "trailing": "\$50000",
    },
    {
      "title": "Laptop 8",
      "subtitle": "Brand E, 8GB RAM , 256GB SSD",
      "image": "assets/images/php.png",
      "trailing": "\$60000",
    },
    {
      "title": "Laptop ",
      "subtitle": "Brand E, 8GB RAM , 256GB SSD",
      "image": "assets/images/java.png",
      "trailing": "\$30000",
    },
    {
      "title": "Laptop 10",
      "subtitle": "Brand E, 8GB RAM , 256GB SSD",
      "image": "assets/images/html.png",
      "trailing": "\$60000",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 5, 7, 144),
        title: const Text(
          "ONTAP(Inkwell)",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        actions: [
          // IconButton(
          //   iconSize: 30,
          //   color: Colors.white,
          //   onPressed: () {},
          //   icon: const Icon(
          //     Icons.calculate_outlined,
          //   )),
          IconButton(
            iconSize: 30,
            color: const Color.fromARGB(255, 9, 9, 9),
            onPressed: () {
              Navigator.of(context).pushNamed('page');
            },
            icon: const Icon(
              Icons.arrow_forward,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Center(
          child: ListView.builder(
            itemCount: lap.length,
            itemBuilder: (ctx, index) => InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Page9(
                      lapName: lap[index]['title'],
                      lapImage: lap[index]['image'],
                      lapDescription: lap[index]['subtitle'],
                      lapPrice: lap[index]['trailing'],
                    ),
                  ),
                );
              },
              child: Container(
                margin: const EdgeInsets.all(8),
                child: Card(
                  shadowColor: Color.fromARGB(255, 0, 0, 0),
                  elevation: 13,
                  child: ListTile(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    textColor: const Color.fromARGB(255, 6, 6, 6),
                    tileColor: Color.fromARGB(255, 198, 188, 188),
                    title: Text(lap[index]["title"]),
                    subtitle: Text(lap[index]["subtitle"]),
                    trailing: Text(lap[index]["trailing"]),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(lap[index]["image"]),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
