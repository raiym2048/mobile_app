import 'package:flutter/material.dart';


class Log extends StatelessWidget {
  const Log({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[900],
          title: Text("Login Page"),
          centerTitle: true,
        ),
        body:SafeArea(
          child: Center(
            child: Column(
              children: [
                Text("Hello again!"),
              ],
            ),
          ),
        ),
    )
  }
}
