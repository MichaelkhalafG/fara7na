import 'package:flutter/material.dart';
import 'package:wedding_orgnaizer/pages/home/category_products.dart';
import 'michael_lib.dart';
import 'package:google_fonts/google_fonts.dart';

class category extends StatefulWidget {
  const category({super.key});

  @override
  State<category> createState() => _categoryState();
}

class _categoryState extends State<category> with TickerProviderStateMixin {
  late final TabController _tabController1 =
      TabController(length: 5, vsync: this);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color5,
      appBar: AppBar(
        backgroundColor: color10,
        centerTitle: true,
        title: Text(
          'category',
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
        padding: const EdgeInsets.only(left: 20),
        children: [
          Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              Text(
                "our produacts",
                style: GoogleFonts.bebasNeue(
                    color: color10, fontSize: 35, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 15,
              ),
              TabBar(
                controller: _tabController1,
                indicatorColor: color11,
                labelColor: color11,
                isScrollable: true,
                unselectedLabelColor: color12,
                labelPadding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                tabs: const [
                  Tab(
                    child: Text(
                      "SCREENS",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 10,
                        letterSpacing: 4,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "FLOWERS",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 10,
                        letterSpacing: 4,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "CARS",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 10,
                        letterSpacing: 4,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "PHOTOGRAPHER",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 10,
                        letterSpacing: 4,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "VEDIOGRAPHER",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 10,
                        letterSpacing: 4,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height - 265,
            width: double.infinity,
            child: TabBarView(
              controller: _tabController1,
              children: const [
                category_screen(),
                category_flower(),
                category_cars(),
                category_photographer(),
                category_vediographer(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
