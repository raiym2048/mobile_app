import 'dart:js';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mobile_app/pages/Log.dart';
import 'package:mobile_app/pages/home.dart';
import 'package:mobile_app/pages/main_screen.dart';



void main() {

  runApp(MaterialApp(
  theme: ThemeData(
    primaryColor: Colors.greenAccent,

  ),
  initialRoute: '/',
  routes: {
    '/': (context) => Log(),
  },

));}

/*import 'dart:js';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mobile_app/pages/home.dart';
import 'package:mobile_app/pages/main_screen.dart';


void initFirebase() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
}
void main() async {
  initFirebase();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MaterialApp(
    theme: ThemeData(
      primaryColor: Colors.deepOrangeAccent,
    ),
    initialRoute: '/',
    routes: {
      '/': (context) => MainScreen(),
      '/todo': (context) => Home(),
    },
  ));
}*/
