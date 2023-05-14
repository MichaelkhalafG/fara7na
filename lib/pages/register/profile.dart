import 'package:flutter/material.dart';
import '../home/michael_lib.dart';
import '../models/my_user.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() {
  runApp(const MaterialApp(
    home: profile(),
  ));
}

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _HomeState();
}

class _HomeState extends State<profile> {
  // ignore: non_constant_identifier_names
  List<data> user_data = [
    data("NAME", my_user.username),
    data("EMAIL", my_user.email),
    data("TYPE", my_user.Type(my_user.type)),
    data("PHONE", my_user.phone),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color5,
      appBar: AppBar(
        backgroundColor: color10,
        centerTitle: true,
        title: Text(
          'MY POROFILE',
          style: TextStyle(
              color: color13,
              fontFamily: 'raleway',
              fontSize: 24,
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
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Center(
                    //   child: CircleAvatar(
                    //     backgroundColor: color10,
                    //     radius: 80.0,
                    //   ),
                    // ),
                    // const SizedBox(
                    //   height: 50,
                    // ),
                    Text(
                      "PERSONAL INFORMATION",
                      style: TextStyle(
                        color: color10,
                        fontSize: 18,
                        // fontFamily: 'playfair',
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2,
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: user_data.map((userData) {
                          return info_card(userData);
                        }).toList()),
                    const SizedBox(
                      height: 50,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/edit');
                      },
                      child: Container(
                        padding: EdgeInsets.only(top: 10, bottom: 10),
                        width: 350,
                        child: Center(
                          child: Text("Edit",
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
                    SizedBox(
                      height: 10,
                    ),
                    TextButton(
                      onPressed: () async {
                        await FirebaseAuth.instance.signOut();
                        // ignore: use_build_context_synchronously
                        Navigator.pushReplacementNamed(context, "/warper");
                      },
                      child: Container(
                        padding: EdgeInsets.only(top: 10, bottom: 10),
                        width: 350,
                        child: const Center(
                          child: Text("LOG-OUT",
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
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}

user my_user = user(
    1, "Michael khalaf", "maikelkhalaf100@gmail.com", "1", "01274550956", true);
