import 'package:flutter/material.dart';
import 'home/michael_lib.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class loading extends StatefulWidget {
  const loading({super.key});

  @override
  State<loading> createState() => _loadingState();
}

class _loadingState extends State<loading> {
  @override
  Widget build(BuildContext context) {
    // get_time();
    return Scaffold(
      backgroundColor: color10,
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
      //                     Navigator.pushNamed(context, '/');
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SpinKitCubeGrid(
              color: color13,
              size: 150,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
