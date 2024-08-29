import 'package:flutter/material.dart';

class Page6 extends StatefulWidget {
  const Page6({super.key});

  @override
  State<Page6> createState() => _Page6State();
}

class _Page6State extends State<Page6> {
  final _value1 = TextEditingController();
  final _value2 = TextEditingController();
  final _sum = TextEditingController();
  final _sub = TextEditingController();
  final _mul = TextEditingController();
  final _div = TextEditingController();

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.amber[500],
        title: const Text(
          "CALCULATOR",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        
        // leading: IconButton(
        //     iconSize: 30,
        //     color: Colors.white,
        //     onPressed: () {},
        //     icon: const Icon(
        //       Icons.calculate_outlined,
        //     )),
        
        actions: [
          IconButton(
            iconSize: 30,
            color: Colors.white,
            onPressed: () {},
            icon: const Icon(
              Icons.calculate_outlined,
            )),
          IconButton(
            iconSize: 30,
            color: Colors.white,
            onPressed: () {
              Navigator.of(context).pushNamed('page7');
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
            children: [
              SizedBox(
                height: 30,
              ),
              Container(
                
                child: Text(
                  style: TextStyle(
                    color: Colors.amber[600],
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                  "LETS DO SOME CALCULATIONS",
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(       //Two input field for taking values from user
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 100,
                    child: TextFormField(
                      controller: _value1,
                      decoration:const InputDecoration(
                        label: Text("Number 1"),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  Container(
                    width: 100,
                    child: TextFormField(
                      controller: _value2,
                      decoration:const InputDecoration(
                        label: Text("Number 2"),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Divider(
                color: Colors.amber[600],
                thickness: 2,
              ),
              const SizedBox(
                height: 20,
              ),
              TextButton(  // Clear button (with function clear entire input and output field)
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  backgroundColor: Colors.amber[500],
                ),
                onPressed: () {
                  setState(() {
                        _value1.text="";
                        _value2.text="";
                        _sum.text="";
                        _sub.text="";
                        _mul.text="";
                        _div.text="";
                      });
                },
                child: Text("CLEAR"),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                style: TextStyle(
                    color: Colors.amber[600],
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
                "---CALCULATION---",
              ),

              const SizedBox(
                height: 50,
              ),
              Row(  // Summing of two values
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: TextButton(
                      style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        backgroundColor: Colors.amber[500],
                      ),
                      onPressed: () {
                        _sum.text=(int.parse(_value1.text)+int.parse(_value2.text)).toString();
                      },
                      child: Text("SUM"),
                    ),
                  ),
                  Container(
                    width: 100,
                    child: TextFormField(
                      readOnly: true,
                      controller: _sum,
                      decoration:const InputDecoration(
                        label: Text("Sum...."),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(  // Substraction of two values
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: TextButton(
                      style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        backgroundColor: Colors.amber[500],
                      ),
                      onPressed: () {
                        setState(() {
                          _sub.text=(int.parse(_value1.text)-int.parse(_value2.text)).toString();
                      });
                      },
                      child: Text("SUB"),
                    ),
                  ),
                  Container(
                    width: 100,
                    child: TextFormField(
                      readOnly: true,
                      controller: _sub,
                      decoration:const InputDecoration(
                        label: Text("Sub...."),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(  // Multiplication of two values
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: TextButton(
                      style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        backgroundColor: Colors.amber[500],
                      ),
                      onPressed: () {
                        setState(() {
                          _mul.text=(int.parse(_value1.text)*int.parse(_value2.text)).toString();
                      });
                      },
                      child: Text("MUL"),
                    ),
                  ),
                  Container(
                    width: 100,
                    child: TextFormField(
                      readOnly: true,
                      controller: _mul,
                      decoration:const InputDecoration(
                        label: Text("Mul...."),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(  // Division of two values
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: TextButton(
                      style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        backgroundColor: Colors.amber[500],
                      ),
                      onPressed: () {
                        setState(() {
                          _div.text=(double.parse(_value1.text)/double.parse(_value2.text)).toString();
                      });
                      },
                      child: Text("DIV"),
                    ),
                  ),
                  Container(
                    width: 100,
                    child: TextFormField(
                      readOnly: true,
                      controller: _div,
                      decoration:const InputDecoration(
                        label: Text("Div...."),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
