import 'package:flutter/material.dart';
import 'package:wedding_orgnaizer/pages/home/michael_lib.dart';

class package extends StatefulWidget {
  const package({super.key});

  @override
  State<package> createState() => _packageState();
}

class _packageState extends State<package> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: color5,
        appBar: AppBar(
          backgroundColor: color10,
          centerTitle: true,
          title: Text(
            'your package',
            style: TextStyle(
                color: color13,
                fontFamily: 'raleway',
                fontSize: 24,
                fontWeight: FontWeight.bold,
                letterSpacing: 2),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 5,
          elevation: 30,
          // color: color10,
          child: SizedBox(
            height: 60.0,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                        onPressed: () {
                          Navigator.pushNamed(context, '/home');
                        },
                        icon: Icon(
                          Icons.home,
                          color: color11,
                        ),
                      ),
                      IconButton(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                        onPressed: () {
                          Navigator.pushNamed(context, '/category');
                        },
                        icon: Icon(
                          Icons.category,
                          color: color11,
                        ),
                      ),
                    ],
                  )),
                  Expanded(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                        IconButton(
                          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                          onPressed: () {
                            Navigator.pushNamed(context, '/pay');
                          },
                          icon: Icon(
                            Icons.image,
                            color: color11,
                          ),
                        ),
                        IconButton(
                          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                          onPressed: () {
                            Navigator.pushNamed(context, '/profile');
                          },
                          icon: Icon(
                            Icons.person_rounded,
                            color: color11,
                          ),
                        ),
                      ])),
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: color12,
          child: Icon(
            Icons.favorite,
            color: color11,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: Padding(
          padding: EdgeInsets.fromLTRB(40, 30, 40, 0),
          child: ListView(
            children: [],
          ),
        ));
  }

  Widget package_card(int id, String name, double price, bool availability,
      String photo, double duration, bool is_favorite, String descreption) {
    return Container();
  }
}
