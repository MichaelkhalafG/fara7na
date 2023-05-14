import 'package:flutter/material.dart';
import 'package:wedding_orgnaizer/pages/models/my_user.dart';
import 'package:wedding_orgnaizer/pages/register/profile.dart';
import 'package:wedding_orgnaizer/pages/home/michael_lib.dart';

class edit_profile extends StatefulWidget {
  const edit_profile({super.key});

  @override
  State<edit_profile> createState() => _edit_profileState();
}

class _edit_profileState extends State<edit_profile> {
  final _email_controller = TextEditingController();
  final _password_controller = TextEditingController();
  final _repassword_controller = TextEditingController();
  final _name_controller = TextEditingController();
  final _phone_controller = TextEditingController();
  bool is_password_obscure = true;
  String errors = "\n";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: color5,
        appBar: AppBar(
          backgroundColor: color10,
          centerTitle: true,
          title: Text(
            "PERSONAL INFORMATION",
            style: TextStyle(
                color: color13,
                fontFamily: 'raleway',
                fontSize: 15,
                fontWeight: FontWeight.bold,
                letterSpacing: 2),
          ),
        ),
        // bottomNavigationBar: BottomAppBar(
        //   shape: const CircularNotchedRectangle(),
        //   notchMargin: 5,
        //   elevation: 30,
        //   // color: color10,
        //   child: SizedBox(
        //     height: 60.0,
        //     child: Padding(
        //       padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
        //       child: Row(
        //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //         children: [
        //           Expanded(
        //               child: Row(
        //             mainAxisAlignment: MainAxisAlignment.start,
        //             children: [
        //               IconButton(
        //                 padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        //                 onPressed: () {
        //                   Navigator.pushNamed(context, '/home');
        //                 },
        //                 icon: Icon(
        //                   Icons.home,
        //                   color: color11,
        //                 ),
        //               ),
        //               IconButton(
        //                 padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        //                 onPressed: () {
        //                   Navigator.pushNamed(context, '/category');
        //                 },
        //                 icon: Icon(
        //                   Icons.category,
        //                   color: color11,
        //                 ),
        //               ),
        //             ],
        //           )),
        //           Expanded(
        //               child: Row(
        //                   mainAxisAlignment: MainAxisAlignment.end,
        //                   children: [
        //                 IconButton(
        //                   padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        //                   onPressed: () {
        //                     Navigator.pushNamed(context, '/pay');
        //                   },
        //                   icon: Icon(
        //                     Icons.image,
        //                     color: color11,
        //                   ),
        //                 ),
        //                 IconButton(
        //                   padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        //                   onPressed: () {
        //                     Navigator.pushNamed(context, '/profile');
        //                   },
        //                   icon: Icon(
        //                     Icons.person_rounded,
        //                     color: color11,
        //                   ),
        //                 ),
        //               ])),
        //         ],
        //       ),
        //     ),
        //   ),
        // ),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {},
        //   backgroundColor: color12,
        //   child: Icon(
        //     Icons.favorite,
        //     color: color11,
        //   ),
        // ),
        // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: ListView(
          children: [
            Padding(
                padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "PERSONAL INFORMATION",
                      style: TextStyle(
                        color: color10,
                        fontSize: 20,
                        fontFamily: 'playfair',
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2,
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    build_text_fild(
                        "NAME", my_user.username, false, _name_controller),
                    build_text_fild(
                        "PASSWORD",
                        my_user.password_stars(my_user.password),
                        true,
                        _password_controller),
                    build_text_fild(
                        "re enter PASSWORD",
                        my_user.password_stars(my_user.password),
                        true,
                        _repassword_controller),
                    build_text_fild(
                        "PHONE", my_user.phone, false, _phone_controller),
                    const SizedBox(
                      height: 80,
                    ),
                    TextButton(
                      onPressed: () {
                        validate(
                            _password_controller.text,
                            _repassword_controller.text,
                            _name_controller.text,
                            _phone_controller.text);
                      },
                      child: Container(
                        padding: EdgeInsets.only(top: 10, bottom: 10),
                        width: 350,
                        child: Center(
                          child: Text("SAVE",
                              style: TextStyle(
                                  color: color11,
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 2)),
                        ),
                      ),
                    ),
                    Divider(
                      height: 0,
                      color: color10,
                      thickness: 2,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/con');
                      },
                      child: Container(
                        padding: const EdgeInsets.only(top: 10, bottom: 10),
                        width: 350,
                        child: const Center(
                          child: Text("CANCEL",
                              style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 2)),
                        ),
                      ),
                    ),
                    const Divider(
                      height: 0,
                      color: Colors.red,
                      thickness: 2,
                    ),
                  ],
                )),
          ],
        ));
  }

  Widget build_text_fild(String labletext, String placeholdertext,
      bool ispassword, TextEditingController controller) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
        child: TextField(
          controller: controller,
          obscureText: ispassword ? is_password_obscure : false,
          decoration: InputDecoration(
              suffixIcon: ispassword
                  ? IconButton(
                      onPressed: () {
                        setState(() {
                          is_password_obscure = !is_password_obscure;
                        });
                      },
                      icon: const Icon(Icons.remove_red_eye_rounded),
                      color: color10,
                    )
                  : null,
              contentPadding: const EdgeInsets.only(bottom: 5),
              labelText: labletext,
              // hintStyle: TextStyle(fontSize: 15),
              floatingLabelBehavior: FloatingLabelBehavior.always,
              hintText: placeholdertext,
              hintStyle: TextStyle(
                  color: color10, fontWeight: FontWeight.bold, fontSize: 15)),
        ));
  }

  validate(
      String password, String repassword, String name, String phone) async {
    errors = "\n";

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
      my_user =
          user(1, name, "maikelkhalaf100@gmail.com", password, phone, true);
      Navigator.pushReplacementNamed(context, '/profile');
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
                  "Have a good day \nWe are glad to serve you\n",
                  style: TextStyle(color: color13),
                ),
              ),
            ));
          });
    }
  }
}
