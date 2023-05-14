import 'package:flutter/material.dart';
import 'package:wedding_orgnaizer/main.dart';
import 'package:wedding_orgnaizer/pages/container.dart';
import 'package:wedding_orgnaizer/pages/home/home.dart';
import 'package:wedding_orgnaizer/pages/register/authenticate.dart';
import 'package:firebase_auth/firebase_auth.dart';

class warper extends StatefulWidget {
  const warper({super.key});

  @override
  State<warper> createState() => _warperState();
}

class _warperState extends State<warper> {
  // final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          // print(user.email);
          return const container();
        } else {
          return const authenticate();
        }
      },
    ));
  }
}
