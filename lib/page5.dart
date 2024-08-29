import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Page5 extends StatefulWidget {
  const Page5({super.key});

  @override
  State<Page5> createState() => _Page5State();
}

class _Page5State extends State<Page5> {
  TextEditingController _name = new TextEditingController();
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
              Navigator.of(context).pushNamed('page6');
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
                Container(
                  width: 250,
                  child: TextFormField(
                    controller: _name,
                    decoration: InputDecoration(
                      label: Text("Name"),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    backgroundColor: Colors.amber[500],
                  ),
                  onPressed: () {
                    if (_name.text == "") {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: Icon(
                            Icons.warning,
                            color: Colors.red,
                            size: 45,
                          ),
                          actions: [
                            TextButton(
                              style: TextButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                backgroundColor: Colors.amber[500],
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text("Retry"),
                            ),
                          ],
                          content: Text(
                            "Name is Required!",
                          ),
                        ),
                      );
                    } else if (_name.text != "") {
                      setState(() {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: Icon(
                              Icons.done,
                              size: 40,
                              color: Colors.green,
                            ),
                            content: Text("Your enterde name = ${_name.text}"),
                          ),
                        );
                      });
                    }
                  },
                  child: Text("Click Here"),
                ),
              ],
            ),
          ),
        ));
  }
}
