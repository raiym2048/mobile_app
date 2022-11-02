import 'package:flutter/material.dart';


class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: Text("Список Элемепнтов"),
        centerTitle: true,
        ),
    body:Column(
      children: [
        Text("Main Screen"),
        ElevatedButton(onPressed: (){
          Navigator.pushNamedAndRemoveUntil(context, '/home', (route)=> true);
        }, child: Text("next"))
      ],
    )
    );}
}
