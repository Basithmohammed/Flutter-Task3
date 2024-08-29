import 'package:flutter/material.dart';

class Page4 extends StatelessWidget {
  const Page4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber[500],
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  backgroundColor: Colors.amber[500],
                ),
                onPressed: () {
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
                          child: Text("Allow"),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            backgroundColor: Colors.amber[500],
                          ),
                          onPressed: () {
                            Navigator.of(context).pushNamed('page5');
                          },
                          child: Text("Go"),
                        ),
                      ],

                      content: Text("You just clicked the button,Do you want to close the alert or want to got to next page!"),
                    ),
                  );
                },
                child: Text("Click Here"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
