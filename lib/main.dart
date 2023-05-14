import 'dart:math';

import 'package:flutter/material.dart';
import 'package:wedding_orgnaizer/pages/container.dart';
import 'package:wedding_orgnaizer/pages/home/package.dart';
import 'package:wedding_orgnaizer/pages/home/add_proudact.dart';
import 'package:wedding_orgnaizer/pages/paymint.dart';
import 'package:wedding_orgnaizer/pages/register/edit_profile.dart';
import 'package:wedding_orgnaizer/pages/register/forget_my_password.dart';
import 'package:wedding_orgnaizer/pages/register/log_in.dart';
import 'package:wedding_orgnaizer/pages/register/sign_up.dart';
import 'package:wedding_orgnaizer/pages/warper.dart';
import 'package:wedding_orgnaizer/pages/models/hall.dart';
import 'pages/register/profile.dart';
import 'pages/home/home.dart';
import 'pages/loading.dart';
import 'pages/home/category.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:wedding_orgnaizer/pages/home/hall_details.dart';

List halls = [];
void hall_content() {
  for (int y = 1; y <= 6; y++) {
    halls = halls +
        [
          Hall([
            50.0,
            "assets/halls/$y.jpg",
            9.9,
            (Random().nextDouble() * 250.5).roundToDouble(),
            "hall $y",
            "We welcome you with all the expressions of reception and with all the meanings and words it contains, and we say to you that you are very welcome, because your chest expands like the breadth of the earth.",
            "Nasr City",
            y,
            Random().nextInt(1000)
          ])
        ];
  }
}

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  hall_content();

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    // home: const warper(),
    initialRoute: '/warper',
    routes: {
      '/home': (context) => Home(halls),
      '/loading': (context) => const loading(),
      '/category': (context) => const category(),
      '/profile': (context) => const profile(),
      '/edit': (context) => const edit_profile(),
      '/add': (context) => add_product(),
      '/login': (context) => const log_in(),
      '/signup': (context) => const sign_up(),
      '/forget_pass': (context) => const forget_my_password(),
      '/warper': (context) => const warper(),
      '/package': (context) => const package(),
      '/con': (context) => const container(),
      '/pay': (context) => paymint(),
      '/hallPage': (context) => const HallPage(),
    },
  ));
}
