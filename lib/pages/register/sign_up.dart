import 'package:flutter/material.dart';
import 'package:wedding_orgnaizer/pages/home/michael_lib.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart';

class sign_up extends StatefulWidget {
  const sign_up({super.key});

  @override
  State<sign_up> createState() => _sign_upState();
}

class _sign_upState extends State<sign_up> {
  final _email_controller = TextEditingController();
  final _password_controller = TextEditingController();
  final _repassword_controller = TextEditingController();
  final _name_controller = TextEditingController();
  final _phone_controller = TextEditingController();
  String errors = "\n";
  late UserCredential user_credential;

  @override
  void disposet() {
    _email_controller.dispose();
    _password_controller.dispose();
    _name_controller.dispose();
    _phone_controller.dispose();
    super.dispose();
  }

  bool is_password_obscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: color10,
        body: ListView(
          children: [
            Container(
                padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      children: [
                        Text(
                          "HELLO",
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
                      height: 40,
                    ),
                    build_text_fild(
                        "NAME", "your name", false, _name_controller),
                    build_text_fild(
                        "EMAIL", "your email", false, _email_controller),
                    build_text_fild("PASSWORD", "your password", true,
                        _password_controller),
                    build_text_fild("confirm password", "confirm your password",
                        true, _repassword_controller),
                    build_text_fild("PHONE", "  your phone number", false,
                        _phone_controller),
                    const SizedBox(
                      height: 10,
                    ),
                    TextButton(
                      onPressed: () {
                        validate(
                            _email_controller.text,
                            _password_controller.text,
                            _repassword_controller.text,
                            _name_controller.text,
                            _phone_controller.text);
                      },
                      child: Container(
                        padding: const EdgeInsets.only(top: 10, bottom: 10),
                        width: 350,
                        child: Center(
                          child: Text("SAVE",
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
                      height: 10,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/login');
                      },
                      child: Container(
                        padding: const EdgeInsets.only(top: 10, bottom: 10),
                        width: 350,
                        child: Center(
                          child: Text("GO TO LOG IN",
                              style: TextStyle(
                                  color: Colors.red[900],
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 2)),
                        ),
                      ),
                    ),
                    Divider(
                      height: 0,
                      color: Colors.red[900],
                      thickness: 2,
                    ),
                  ],
                )),
          ],
        ));
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

  Future sign_in(String email, String password) async {
    try {
      user_credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: email.trim(), password: password.trim());
    } on FirebaseAuthException catch (e) {
      if (e.code == "email-already-in-use") {
        errors = errors +
            "this email is already taken check the email or go to log_in \n";
      }
    }
    // if (user_credential.user?.emailVerified == false) {
    //   final user = FirebaseAuth.instance.currentUser!;
    //   await user.sendEmailVerification();
    // }
  }

  validate(String email, String password, String repassword, String name,
      String phone) async {
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
    if (name.trim().length < 3) {
      errors = errors + "name is to short \n \n";
    }
    if (phone.trim().length != 11 ||
        phone.trim().isEmpty ||
        !phone.trim().contains("0")) {
      errors = errors + "please enter a correct phone number \n \n";
    }
    if (errors == "\n") {
      await sign_in(email, password);
    }
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
    } else {
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
    }
  }
}
