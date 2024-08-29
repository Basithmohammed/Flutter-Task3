import 'package:flutter/material.dart';
import 'package:flutter_project_3/page2.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController _email = new TextEditingController();
  TextEditingController _password = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber[400],

        actions: [
          
          IconButton(
            iconSize: 30,
            color: Colors.white,
            onPressed: () {
              Navigator.of(context).pushNamed('counterScreen');
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
                child: const Text(
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                  "LOGIN HERE !",
                ),
              ),
              Container(
                width: 250,
                margin: EdgeInsets.all(20),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: _email,
                  decoration: const InputDecoration(
                    label: Text("Enter Your Email........!"),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Container(
                width: 250,
                margin: EdgeInsets.all(20),
                child: TextFormField(
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                  controller: _password,
                  decoration: const InputDecoration(
                    label: Text("Enter Your Password........!"),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red[500],
                    foregroundColor: Colors.amber),
                onPressed: () {
                  setState(() {
                    _email.text;
                    _password.text;
                  });
                },
                child: Text("SUBMIT"),
              ),
              Text("Your email = ${_email.text}"),
              Text("Your password = ${_password.text}"),
            ],
          ),
        ),
      ),
    );
  }
}
