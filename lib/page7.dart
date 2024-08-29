import 'package:flutter/material.dart';
import 'package:flutter_project_3/page8.dart';

class Page7 extends StatefulWidget {
  const Page7({super.key});

  @override
  State<Page7> createState() => _Page7State();
}

class _Page7State extends State<Page7> {
  final formkey = GlobalKey<FormState>();

  final mobile = TextEditingController();
  final name = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // centerTitle: true,
          backgroundColor: Colors.amber[500],
          title: const Text(
            "Input Value Passing",
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
              color: Colors.white,
              onPressed: () {
                Navigator.of(context).pushNamed('page8');
              },
              icon: const Icon(
                Icons.arrow_forward,
              ),
            ),
          ],
        ),
        body: SafeArea(
          child: Center(
            child: Form(
              key: formkey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    style: TextStyle(
                      color: Colors.amber[600],
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                    "WELCOME BOARD!",
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: 250,
                    child: TextFormField(
                      maxLength: 25,
                      decoration: const InputDecoration(
                        label: Text("Enter Your Name."),
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          // here "!" it is not a not operator it is just a confirmatory tool
                          return "name is required";
                        } else {
                          return null;
                        }
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 250,
                    child: TextFormField(
                      maxLength: 10,
                      decoration: const InputDecoration(
                        label: Text("Enter Your Phone No."),
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "please enter valid number";
                        } else if (value.length != 10) {
                          return "phone number should be 10 digits";
                        } else {
                          return null;
                        }
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextButton(
                    // Clear button (with function clear entire input and output field)
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      backgroundColor: Colors.amber[500],
                    ),
                    onPressed: () {
                      if (formkey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            behavior: SnackBarBehavior.floating,
                            backgroundColor: Colors.orange,
                            duration: Duration(milliseconds: 3000),
                            content: Text("submitted successfully"),
                            action: SnackBarAction(
                                label: "continue",
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => Page8()));
                                }),
                          ),
                        );
                      }
                    },
                    child: Text("SUBMIT"),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
