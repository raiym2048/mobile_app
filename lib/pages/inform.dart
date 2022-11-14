import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Inform extends StatelessWidget {
  const Inform({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "smdfk",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Information"),

        ),
        body: Text(
    '''
    jdrgklmsdrmg
    drgk;lgdr
    se;gml
    seml;gsm
    lsfdm
    sefnlk
    seofjlnk
    seiflnk
    afilnaw
    aehlfi
    awohdn
    ''',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            fontSize: 20,
          ),
          textAlign: TextAlign.center,
        ),
      ),

    );
  }
}
