import 'dart:math';

import 'package:flutter/material.dart';
import 'package:wedding_orgnaizer/main.dart';
import 'package:wedding_orgnaizer/pages/home/hall_card.dart';
import 'package:wedding_orgnaizer/pages/models/hall.dart';

Color color5 = const Color(0xFFF2F2F2);
Color color10 = const Color(0xFF251B37);
Color color11 = const Color(0xFF372948);
Color color12 = const Color(0xFFFFCACA);
Color color13 = const Color(0xFFFFECEF);

class Home extends StatefulWidget {
  final List halls;

  const Home(this.halls, {Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: const Color(0xFFF2F2F2),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50.0),
        child: AppBar(
          title: Text(
            "Home",
            style: TextStyle(
                color: color13,
                fontFamily: 'raleway',
                fontSize: 24,
                fontWeight: FontWeight.bold,
                letterSpacing: 2),
          ),
          backgroundColor: const Color(0xFF251B37),
          centerTitle: true,
          elevation: 5,
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
      //                     Navigator.pushNamed(context, '/add');
      //                   },
      //                   icon: Icon(
      //                     Icons.add,
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
      body: ListView(children: [
        Column(
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Wedding Halls",
                  style: TextStyle(
                      color: color10,
                      fontSize: 25,
                      fontFamily: 'raleway',
                      fontWeight: FontWeight.w600,
                      letterSpacing: 2),
                ),
                Divider(
                  height: 15,
                  thickness: 1,
                  color: color11,
                  indent: 70,
                  endIndent: 70,
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height - 210,
              child: ListView(
                children: hall_list(),
              ),
            ),
          ],
        ),
      ]),
    );
  }

  List<Widget> hall_list() {
    List<Widget> hall_list = [];
    hall_list = halls.map((Hall) => HallCard(Hall)).toList();
    return hall_list;
  }
}
