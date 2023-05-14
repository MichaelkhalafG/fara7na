import 'package:flutter/material.dart';
import 'package:wedding_orgnaizer/pages/register/log_in.dart';
import 'package:wedding_orgnaizer/pages/register/sign_up.dart';

class authenticate extends StatefulWidget {
  const authenticate({super.key});

  @override
  State<authenticate> createState() => _authenticateState();
}

class _authenticateState extends State<authenticate> {
  bool showlogin = true;
  @override
  Widget build(BuildContext context) {
    if (showlogin) {
      return log_in();
    } else {
      return sign_up();
    }
  }
}
