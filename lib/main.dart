// import 'dart:js';
// import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:world_time/pages/choose_location.dart';
import 'package:world_time/pages/loading.dart';
import 'pages/home.dart';

void main() {
  runApp(MaterialApp(
    // home: home(),
    initialRoute: '/',
    routes: {
      '/': (context) =>Loading(),
      '/home': (context) => Home(),
      '/location': (context) => ChooseLocation()
    },
  ));
}
