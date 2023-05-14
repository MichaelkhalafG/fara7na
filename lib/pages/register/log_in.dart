import 'package:flutter/material.dart';
import 'package:wedding_orgnaizer/pages/home/michael_lib.dart';
// import 'package:start/pages/services/auth.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart';

class log_in extends StatefulWidget {
  const log_in({super.key});

  @override
  State<log_in> createState() => _log_inState();
}

class _log_inState extends State<log_in> {
  // String errormassege = '';
  // bool is_log_in = true;
  bool is_password_obscure = true;

  // AuthService authService = AuthService();
  final _email_controller = TextEditingController();
  final _password_controller = TextEditingController();
  String errors = "\n";

  @override
  void disposet() {
    _email_controller.dispose();
    _password_controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color10,
      // appBar: AppBar(
      //   backgroundColor: color10,
      //   title: Center(
      //     child: Text(
      //       'LOG-IN',
      //       style: TextStyle(
      //         fontFamily: 'playfair',
      //         fontWeight: FontWeight.bold,
      //         color: color13,
      //         letterSpacing: 3,
      //       ),
      //     ),
      //   ),
      // ),
      body: ListView(
        children: [
          // const Hero(
          //     tag: AssetImage("assets/log_in.jpg"),
          //     child: Image(image: AssetImage("assets/log_in.jpg"))),
          Container(
              padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 150,
                  ),
                  Row(
                    children: [
                      Text(
                        "HELLO ",
                        style: GoogleFonts.bebasNeue(
                          color: color12,
                          fontSize: 25,
                          // fontFamily: 'playfair',
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2,
                        ),
                      ),
                      Icon(
                        Icons.handshake,
                        color: color12,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        "We are Very Happy To See You .",
                        style: GoogleFonts.bebasNeue(
                          color: color13,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  build_text_fild("EMAIL", "ex: exampile@gmail.com", false,
                      _email_controller),
                  build_text_fild(
                      "password", "********", true, _password_controller),
                  Row(
                    children: [
                      TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/forget_pass');
                          },
                          child: Text("Forget My Password",
                              style: TextStyle(
                                  color: Colors.red[900],
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 2))),
                    ],
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                  TextButton(
                    onPressed: () {
                      validate(
                          _email_controller.text, _password_controller.text);
                    },
                    child: Container(
                      padding: const EdgeInsets.only(top: 10, bottom: 10),
                      width: 350,
                      child: Center(
                        child: Text("LOG-IN",
                            style: TextStyle(
                                color: color12,
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 2)),
                      ),
                    ),
                  ),
                  Divider(
                    height: 0,
                    color: color12,
                    thickness: 2,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/signup');
                    },
                    child: Container(
                      padding: const EdgeInsets.only(top: 10, bottom: 10),
                      width: 350,
                      child: Center(
                        child: Text("I'am New Here .",
                            style: TextStyle(
                                color: color12,
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 2)),
                      ),
                    ),
                  ),
                  Divider(
                    height: 0,
                    color: color12,
                    thickness: 2,
                  ),
                ],
              )),
        ],
      ),
    );
  }

  Widget build_text_fild(String labletext, String placeholdertext,
      bool ispassword, TextEditingController controller) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
        child: TextField(
          style: TextStyle(color: color5),
          controller: controller,
          obscureText: ispassword ? is_password_obscure : false,
          decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
              suffixIcon: ispassword
                  ? IconButton(
                      onPressed: () {
                        setState(() {
                          is_password_obscure = !is_password_obscure;
                        });
                      },
                      icon: const Icon(Icons.remove_red_eye_rounded),
                      color: color12,
                    )
                  : null,
              contentPadding: const EdgeInsets.only(bottom: 5, left: 10),
              labelText: labletext,
              labelStyle: TextStyle(color: color12),
              floatingLabelBehavior: FloatingLabelBehavior.always,
              hintText: placeholdertext,
              hintStyle: TextStyle(
                color: color13,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              )),
        ));
  }

  Future log_in(String email, String password) async {
    try {
      UserCredential user_credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(
              email: email.trim(), password: password.trim());
      print(user_credential);
    } on FirebaseAuthException catch (e) {
      if (e.code == "user-not-found") {
        errors = errors +
            "The email not found in our data check the email or go to sign up \n \n";
      }
      if (e.code == "wrong-password") {
        errors = errors +
            "The password wrong check the password or go to forget my password \n \n";
      }
    }
  }

  validate(String email, String password) async {
    errors = "\n";
    if (email.trim().isEmpty) {
      errors = errors + "Please enter some text in the email field \n \n";
    }
    if (!email.trim().contains("@") || !email.trim().contains(".")) {
      errors = errors + "Please enter email contain \n' @ ' and ' . ' \n \n";
    }
    if (password.trim().length < 5) {
      errors = errors +
          "Please enter more then 5 letters or numbers in password field \n \n";
    }
    await log_in(email, password);
    if (errors != "\n") {
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              content: Expanded(
                  child: Container(
                decoration: BoxDecoration(
                    color: color10, borderRadius: BorderRadius.circular(15)),
                padding: EdgeInsets.all(20),
                child: Text(
                  errors,
                  style: TextStyle(color: color13),
                ),
              )),
            );
          });
    } else if (errors == "\n") {
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
                content: Expanded(
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: color10, borderRadius: BorderRadius.circular(15)),
                child: Text(
                  "Have a good day \nWe are glad to serve you",
                  style: TextStyle(color: color13),
                ),
              ),
            ));
          });
      Navigator.pushReplacementNamed(context, '/con');
    }
  }
}
