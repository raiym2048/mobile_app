import 'dart:js';

import 'package:flutter/material.dart';
import 'package:mobile_app/pages/home.dart';
import 'package:mobile_app/pages/main_screen.dart';



void main() => runApp(MaterialApp(
  theme: ThemeData(
    primaryColor: Colors.greenAccent,

  ),
  initialRoute: '/',
  routes: {
    '/': (context) => MainScreen(),
    '/home': (context) => Home(),
  },

));
