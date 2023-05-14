import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wedding_orgnaizer/pages/home/michael_lib.dart';

class forget_my_password extends StatefulWidget {
  const forget_my_password({super.key});

  @override
  State<forget_my_password> createState() => _forget_my_passwordState();
}

class _forget_my_passwordState extends State<forget_my_password> {
  final _email_controller = TextEditingController();
  final _password_controller = TextEditingController();
  final _repassword_controller = TextEditingController();
  final _code_controller = TextEditingController();
  bool is_password_obscure = true;
  String errors = "\n";
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
          //     tag: AssetImage("assets/forget_pass.jpg"),
          //     child: Image(image: AssetImage("assets/forget_pass.jpg"))),
          Container(
              padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 60,
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
                        "dont worry we are here for you .",
                        style: GoogleFonts.bebasNeue(
                          color: color13,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  build_text_fild("EMAIL", "ex: exampile@gmail.com", false,
                      _email_controller),
                  build_text_fild(
                      "ENTER THE CODE",
                      "Enter The Code That Sent To You",
                      false,
                      _code_controller),
                  build_text_fild("ENTER NEW PASSWORD", "your new password",
                      true, _password_controller),
                  build_text_fild("RE ENTER NEW PASSWORD", "your new password",
                      true, _repassword_controller),
                  const SizedBox(
                    height: 20,
                  ),
                  TextButton(
                    onPressed: () {
                      validate(
                          _email_controller.text,
                          _password_controller.text,
                          _repassword_controller.text,
                          _code_controller.text);
                    },
                    child: Container(
                      padding: const EdgeInsets.only(top: 10, bottom: 10),
                      width: 350,
                      child: Center(
                        child: Text("CONFARM",
                            style: TextStyle(
                                color: color12,
                                fontSize: 15,
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
                    onPressed: () {},
                    child: Container(
                      padding: const EdgeInsets.only(top: 10, bottom: 10),
                      width: 350,
                      child: Center(
                        child: Text("RE SEND THE MASSAGE",
                            style: TextStyle(
                                color: color12,
                                fontSize: 15,
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
      bool ispassword, TextEditingController text_controller) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
        child: TextField(
          controller: text_controller,
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
              hintStyle: TextStyle(color: color13, fontSize: 15)),
        ));
  }

  validate(
      String email, String password, String repassword, String code) async {
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
    if (password.trim() != repassword.trim()) {
      errors =
          errors + "The password and confirm password are not the same \n \n";
    }
    if (code.trim().length < 3) {
      errors = errors + "code is wrong \n \n";
    }

    if (errors == "\n") {}
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
                  "Have a good day \nWe are glad to serve you\nplease log in",
                  style: TextStyle(color: color13),
                ),
              ),
            ));
          });
      Navigator.pushReplacementNamed(context, '/login');
    }
  }
}
