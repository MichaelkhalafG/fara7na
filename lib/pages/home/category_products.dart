import 'dart:math';

import 'package:flutter/material.dart';
import 'package:favorite_button/favorite_button.dart';
import 'package:wedding_orgnaizer/pages/home/category_details.dart';
import 'package:wedding_orgnaizer/pages/models/car.dart';
import 'package:wedding_orgnaizer/pages/models/photographer.dart';
import 'package:wedding_orgnaizer/pages/models/videographer.dart';

import '../models/flowers.dart';
import '../models/screen.dart';

class category_screen extends StatefulWidget {
  const category_screen({super.key});

  @override
  State<category_screen> createState() => _category_screenState();
}

class _category_screenState extends State<category_screen> {
  List<Widget> s = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color5,
      body: ListView(
        children: [
          const SizedBox(
            height: 15,
          ),
          Container(
            padding: const EdgeInsets.only(right: 15),
            width: MediaQuery.of(context).size.width - 30,
            height: MediaQuery.of(context).size.height - 300,
            child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                primary: false,
                mainAxisSpacing: 15,
                childAspectRatio: 0.7,
                children: Screen_list()),
          )
        ],
      ),
    );
  }

  Widget screen_card(
      int productId,
      String name,
      String description,
      String ownerPhone,
      String images,
      double price,
      double rate,
      double duration,
      bool availability,
      String screenType,
      double priceOfScreenMeter) {
    List prod2 = [
      productId,
      name,
      description,
      ownerPhone,
      images,
      price,
      rate,
      duration,
      availability,
      screenType,
      priceOfScreenMeter
    ];
    Screen prod1 = Screen(prod2);

    return Padding(
      padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => productpage(prod: prod1)));
        },
        child: Container(
          decoration: BoxDecoration(
              color: color10,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(color: color13, spreadRadius: 4, blurRadius: 5)
              ]),
          child: Column(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(5, 5, 5, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: 30,
                        child: FavoriteButton(
                          iconDisabledColor: color11,
                          iconColor: color12,
                          iconSize: 50,
                          valueChanged: (isFavorite) {
                            setState(() {
                              s = [];

                              if (isFavorite == true) {
                                isFavorite = false;
                              }
                              if (isFavorite == false) {
                                isFavorite = true;
                              }
                              print(isFavorite);
                            });
                          },
                        ),
                      )
                      // IconButton(
                      //   onPressed: () {
                      //     setstate() {
                      //       if (is_favorite == true) {
                      //         is_favorite = false;
                      //       }
                      //       if (is_favorite == false) {
                      //         is_favorite = true;
                      //       }
                      //     }
                      //   },
                      //   icon: is_favorite
                      //       ? Icon(Icons.favorite, color: color12)
                      //       : Icon(Icons.favorite_border, color: color12),
                      // )
                    ],
                  ),
                ),
              ),
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage(images),
                  radius: 50.0,
                ),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '\$$price ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          letterSpacing: 2,
                          color: color13),
                    ),
                    Text(
                      name,
                      style: TextStyle(
                          // fontWeight: FontWeight.bold,
                          fontFamily: 'playfair',
                          fontSize: 15,
                          letterSpacing: 4,
                          color: color13),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Container(
                  height: 1,
                  color: color12,
                ),
              ),
              Expanded(
                flex: 2,
                child: TextButton.icon(
                    onPressed: () {
                      // Navigator.of(context).push(MaterialPageRoute(
                      // builder: (context) => category_details(
                      //       id: id,
                      //       name: name,
                      //       price: price,
                      //       photo: photo,
                      //       availability: availability,
                      //       is_favorite: isFavorite,
                      //       duration: duration,
                      //       descreption: descreption,
                      //     )));
                    },
                    icon: Icon(
                      Icons.shopping_bag,
                      color: color12,
                      size: 15,
                    ),
                    label: Text(
                      "BUY NOW",
                      style: TextStyle(
                          color: color12,
                          fontSize: 10,
                          fontWeight: FontWeight.bold),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> Screen_list() {
    for (int y = 1; y <= 5; y++) {
      s = s +
          [
            screen_card(
                y,
                "screen $y",
                "We have different systems for LED screen screen systems to be used in theaters to implement virtual decorations, and they can be used to display a direct image from imaging cameras or insert a live broadcast on the LED screen from the receiver. It can also be used in banquet halls and displaying media from all devices, including the display from the flash memory. Laptops and mobiles can also be used in conferences and exhibitions",
                "01274550945",
                "assets/screens/$y.jpg",
                (Random().nextDouble() * 250.5).roundToDouble(),
                9.9,
                12.5,
                true,
                "type $y",
                10.5)
          ];
    }
    return s;
  }
}

class category_cars extends StatefulWidget {
  const category_cars({super.key});

  @override
  State<category_cars> createState() => _category_carsState();
}

class _category_carsState extends State<category_cars> {
  List<Widget> c = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color5,
      body: ListView(
        children: [
          const SizedBox(
            height: 15,
          ),
          Container(
            padding: const EdgeInsets.only(right: 15),
            width: MediaQuery.of(context).size.width - 30,
            height: MediaQuery.of(context).size.height - 300,
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              primary: false,
              mainAxisSpacing: 15,
              childAspectRatio: 0.7,
              children: car_list(),
            ),
          )
        ],
      ),
    );
  }

  Widget car_card(
    int productId,
    String name,
    String description,
    String ownerPhone,
    String images,
    double price,
    double rate,
    double duration,
    bool availability,
    String carPlate,
    String carOwner,
    String model,
    String color,
    int productionDate,
  ) {
    Car prod1 = Car([
      productId,
      name,
      description,
      ownerPhone,
      images,
      price,
      rate,
      duration,
      availability,
      carPlate,
      carOwner,
      model,
      color,
      productionDate,
    ]);

    return Padding(
      padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => productpage(prod: prod1)));
        },
        child: Container(
          decoration: BoxDecoration(
              color: color10,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(color: color13, spreadRadius: 4, blurRadius: 5)
              ]),
          child: Column(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(5, 5, 5, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 30,
                        child: FavoriteButton(
                          iconDisabledColor: color11,
                          iconColor: color12,
                          iconSize: 50,
                          valueChanged: (isFavorite) {
                            setState(() {
                              c = [];

                              if (isFavorite == true) {
                                isFavorite = false;
                              }
                              if (isFavorite == false) {
                                isFavorite = true;
                              }
                              print(isFavorite);
                            });
                          },
                        ),
                      )
                      // IconButton(
                      //   onPressed: () {
                      //     setstate() {
                      //       if (is_favorite == true) {
                      //         is_favorite = false;
                      //       }
                      //       if (is_favorite == false) {
                      //         is_favorite = true;
                      //       }
                      //     }
                      //   },
                      //   icon: is_favorite
                      //       ? Icon(Icons.favorite, color: color12)
                      //       : Icon(Icons.favorite_border, color: color12),
                      // )
                    ],
                  ),
                ),
              ),
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage(images),
                  radius: 50.0,
                ),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '\$$price ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          letterSpacing: 2,
                          color: color13),
                    ),
                    Text(
                      name,
                      style: TextStyle(
                          // fontWeight: FontWeight.bold,
                          fontFamily: 'playfair',
                          fontSize: 15,
                          letterSpacing: 4,
                          color: color13),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Container(
                  height: 1,
                  color: color12,
                ),
              ),
              Expanded(
                flex: 2,
                child: TextButton.icon(
                    onPressed: () {
                      // Navigator.of(context).push(MaterialPageRoute(
                      // builder: (context) => category_details(
                      //       id: id,
                      //       name: name,
                      //       price: price,
                      //       photo: photo,
                      //       availability: availability,
                      //       is_favorite: isFavorite,
                      //       duration: duration,
                      //       descreption: descreption,
                      //     )));
                    },
                    icon: Icon(
                      Icons.shopping_bag,
                      color: color12,
                      size: 15,
                    ),
                    label: Text(
                      "BUY NOW",
                      style: TextStyle(
                          color: color12,
                          fontSize: 10,
                          fontWeight: FontWeight.bold),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> car_list() {
    for (int y = 1; y <= 6; y++) {
      c = c +
          [
            car_card(
                y,
                "car $y",
                "We have different systems for LED screen screen systems to be used in theaters to implement virtual decorations, and they can be used to display a direct image from imaging cameras or insert a live broadcast on the LED screen from the receiver. It can also be used in banquet halls and displaying media from all devices, including the display from the flash memory. Laptops and mobiles can also be used in conferences and exhibitions",
                "01274550945",
                "assets/cars/$y.jpg",
                (Random().nextDouble() * 250.5).roundToDouble(),
                9.9,
                12.5,
                true,
                "type $y",
                "type $y",
                "type $y",
                "type $y",
                10)
          ];
    }
    return c;
  }
}

class category_flower extends StatefulWidget {
  const category_flower({super.key});

  @override
  State<category_flower> createState() => _category_flowerState();
}

class _category_flowerState extends State<category_flower> {
  List<Widget> f = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color5,
      body: ListView(
        children: [
          const SizedBox(
            height: 15,
          ),
          Container(
            padding: const EdgeInsets.only(right: 15),
            width: MediaQuery.of(context).size.width - 30,
            height: MediaQuery.of(context).size.height - 300,
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              primary: false,
              mainAxisSpacing: 15,
              childAspectRatio: 0.7,
              children: flower_list(),
            ),
          )
        ],
      ),
    );
  }

  Widget flower_card(
    int productId,
    String name,
    String description,
    String ownerPhone,
    String images,
    double price,
    double rate,
    double duration,
    bool availability,
  ) {
    Flower prod1 = Flower([
      productId,
      name,
      description,
      ownerPhone,
      images,
      price,
      rate,
      duration,
      availability,
    ]);

    return Padding(
      padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => productpage(prod: prod1)));
        },
        child: Container(
          decoration: BoxDecoration(
              color: color10,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(color: color13, spreadRadius: 4, blurRadius: 5)
              ]),
          child: Column(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(5, 5, 5, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 30,
                        child: FavoriteButton(
                          iconDisabledColor: color11,
                          iconColor: color12,
                          iconSize: 50,
                          valueChanged: (isFavorite) {
                            setState(() {
                              f = [];

                              if (isFavorite == true) {
                                isFavorite = false;
                              }
                              if (isFavorite == false) {
                                isFavorite = true;
                              }
                              print(isFavorite);
                            });
                          },
                        ),
                      )
                      // IconButton(
                      //   onPressed: () {
                      //     setstate() {
                      //       if (is_favorite == true) {
                      //         is_favorite = false;
                      //       }
                      //       if (is_favorite == false) {
                      //         is_favorite = true;
                      //       }
                      //     }
                      //   },
                      //   icon: is_favorite
                      //       ? Icon(Icons.favorite, color: color12)
                      //       : Icon(Icons.favorite_border, color: color12),
                      // )
                    ],
                  ),
                ),
              ),
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage(images),
                  radius: 50.0,
                ),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '\$$price ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          letterSpacing: 2,
                          color: color13),
                    ),
                    Text(
                      name,
                      style: TextStyle(
                          // fontWeight: FontWeight.bold,
                          fontFamily: 'playfair',
                          fontSize: 15,
                          letterSpacing: 4,
                          color: color13),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Container(
                  height: 1,
                  color: color12,
                ),
              ),
              Expanded(
                flex: 2,
                child: TextButton.icon(
                    onPressed: () {
                      // Navigator.of(context).push(MaterialPageRoute(
                      //     builder: (context) => category_details(
                      //           id: id,
                      //           name: name,
                      //           price: price,
                      //           photo: photo,
                      //           availability: availability,
                      //           is_favorite: isFavorite,
                      //           duration: duration,
                      //           descreption: descreption,
                      //         )));
                    },
                    icon: Icon(
                      Icons.shopping_bag,
                      color: color12,
                      size: 15,
                    ),
                    label: Text(
                      "BUY NOW",
                      style: TextStyle(
                          color: color12,
                          fontSize: 10,
                          fontWeight: FontWeight.bold),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> flower_list() {
    for (int y = 1; y <= 5; y++) {
      f = f +
          [
            flower_card(
              y,
              "flower $y",
              "We have different systems for LED screen screen systems to be used in theaters to implement virtual decorations, and they can be used to display a direct image from imaging cameras or insert a live broadcast on the LED screen from the receiver. It can also be used in banquet halls and displaying media from all devices, including the display from the flash memory. Laptops and mobiles can also be used in conferences and exhibitions",
              "01274550945",
              "assets/flowers/$y.jpg",
              (Random().nextDouble() * 250.5).roundToDouble(),
              9.9,
              12.5,
              true,
            )
          ];
    }
    return f;
  }
}

class category_photographer extends StatefulWidget {
  const category_photographer({super.key});

  @override
  State<category_photographer> createState() => _category_photographerState();
}

class _category_photographerState extends State<category_photographer> {
  List<Widget> p = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color5,
      body: ListView(
        children: [
          const SizedBox(
            height: 15,
          ),
          Container(
            padding: const EdgeInsets.only(right: 15),
            width: MediaQuery.of(context).size.width - 30,
            height: MediaQuery.of(context).size.height - 300,
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              primary: false,
              mainAxisSpacing: 15,
              childAspectRatio: 0.7,
              children: photo_list(),
            ),
          )
        ],
      ),
    );
  }

  Widget photo_card(
    int productId,
    String name,
    String description,
    String ownerPhone,
    String images,
    double price,
    double rate,
    double duration,
    bool availability,
  ) {
    Photographer prod1 = Photographer([
      productId,
      name,
      description,
      ownerPhone,
      images,
      price,
      rate,
      duration,
      availability,
    ]);

    return Padding(
      padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => productpage(prod: prod1)));
        },
        child: Container(
          decoration: BoxDecoration(
              color: color10,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(color: color13, spreadRadius: 4, blurRadius: 5)
              ]),
          child: Column(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(5, 5, 5, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 30,
                        child: FavoriteButton(
                          iconDisabledColor: color11,
                          iconColor: color12,
                          iconSize: 50,
                          valueChanged: (isFavorite) {
                            setState(() {
                              p = [];

                              if (isFavorite == true) {
                                isFavorite = false;
                              }
                              if (isFavorite == false) {
                                isFavorite = true;
                              }
                              print(isFavorite);
                            });
                          },
                        ),
                      )
                      // IconButton(
                      //   onPressed: () {
                      //     setstate() {
                      //       if (is_favorite == true) {
                      //         is_favorite = false;
                      //       }
                      //       if (is_favorite == false) {
                      //         is_favorite = true;
                      //       }
                      //     }
                      //   },
                      //   icon: is_favorite
                      //       ? Icon(Icons.favorite, color: color12)
                      //       : Icon(Icons.favorite_border, color: color12),
                      // )
                    ],
                  ),
                ),
              ),
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage(images),
                  radius: 50.0,
                ),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '\$$price ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          letterSpacing: 2,
                          color: color13),
                    ),
                    Text(
                      name,
                      style: TextStyle(
                          // fontWeight: FontWeight.bold,
                          fontFamily: 'playfair',
                          fontSize: 8,
                          letterSpacing: 2,
                          color: color13),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Container(
                  height: 1,
                  color: color12,
                ),
              ),
              Expanded(
                flex: 2,
                child: TextButton.icon(
                    onPressed: () {
                      // Navigator.of(context).push(MaterialPageRoute(
                      //     builder: (context) => category_details(
                      //           id: id,
                      //           name: name,
                      //           price: price,
                      //           photo: photo,
                      //           availability: availability,
                      //           is_favorite: isFavorite,
                      //           duration: duration,
                      //           descreption: descreption,
                      //         )));
                    },
                    icon: Icon(
                      Icons.shopping_bag,
                      color: color12,
                      size: 15,
                    ),
                    label: Text(
                      "BUY NOW",
                      style: TextStyle(
                          color: color12,
                          fontSize: 10,
                          fontWeight: FontWeight.bold),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> photo_list() {
    for (int y = 1; y <= 5; y++) {
      p = p +
          [
            photo_card(
              y,
              "photographer $y",
              "We have different systems for LED screen screen systems to be used in theaters to implement virtual decorations, and they can be used to display a direct image from imaging cameras or insert a live broadcast on the LED screen from the receiver. It can also be used in banquet halls and displaying media from all devices, including the display from the flash memory. Laptops and mobiles can also be used in conferences and exhibitions",
              "01274550945",
              "assets/photogr/$y.jpg",
              (Random().nextDouble() * 250.5).roundToDouble(),
              9.9,
              12.5,
              true,
            )
          ];
    }
    return p;
  }
}

class category_vediographer extends StatefulWidget {
  const category_vediographer({super.key});

  @override
  State<category_vediographer> createState() => _category_vediographerState();
}

class _category_vediographerState extends State<category_vediographer> {
  List<Widget> v = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color5,
      body: ListView(
        children: [
          const SizedBox(
            height: 15,
          ),
          Container(
            padding: const EdgeInsets.only(right: 15),
            width: MediaQuery.of(context).size.width - 30,
            height: MediaQuery.of(context).size.height - 300,
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              primary: false,
              mainAxisSpacing: 15,
              childAspectRatio: 0.7,
              children: video_list(),
            ),
          )
        ],
      ),
    );
  }

  Widget video_card(
    int productId,
    String name,
    String description,
    String ownerPhone,
    String images,
    double price,
    double rate,
    double duration,
    bool availability,
  ) {
    Videographer prod1 = Videographer([
      productId,
      name,
      description,
      ownerPhone,
      images,
      price,
      rate,
      duration,
      availability,
    ]);

    return Padding(
      padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => productpage(prod: prod1)));
        },
        child: Container(
          decoration: BoxDecoration(
              color: color10,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(color: color13, spreadRadius: 4, blurRadius: 5)
              ]),
          child: Column(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(5, 5, 5, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 30,
                        child: FavoriteButton(
                          iconDisabledColor: color11,
                          iconColor: color12,
                          iconSize: 50,
                          valueChanged: (isFavorite) {
                            setState(() {
                              v = [];
                              if (isFavorite == true) {
                                isFavorite = false;
                              }
                              if (isFavorite == false) {
                                isFavorite = true;
                              }
                              print(isFavorite);
                            });
                          },
                        ),
                      )
                      // IconButton(
                      //   onPressed: () {
                      //     setstate() {
                      //       if (is_favorite == true) {
                      //         is_favorite = false;
                      //       }
                      //       if (is_favorite == false) {
                      //         is_favorite = true;
                      //       }
                      //     }
                      //   },
                      //   icon: is_favorite
                      //       ? Icon(Icons.favorite, color: color12)
                      //       : Icon(Icons.favorite_border, color: color12),
                      // )
                    ],
                  ),
                ),
              ),
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage(images),
                  radius: 50.0,
                ),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '\$$price ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          letterSpacing: 2,
                          color: color13),
                    ),
                    Text(
                      name,
                      style: TextStyle(
                          // fontWeight: FontWeight.bold,
                          fontFamily: 'playfair',
                          fontSize: 8,
                          letterSpacing: 2,
                          color: color13),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Container(
                  height: 1,
                  color: color12,
                ),
              ),
              Expanded(
                flex: 2,
                child: TextButton.icon(
                    onPressed: () {
                      // Navigator.of(context).push(MaterialPageRoute(
                      //     builder: (context) => category_details(
                      //           id: id,
                      //           name: name,
                      //           price: price,
                      //           photo: photo,
                      //           availability: availability,
                      //           is_favorite: isFavorite,
                      //           duration: duration,
                      //           descreption: descreption,
                      //         )));
                    },
                    icon: Icon(
                      Icons.shopping_bag,
                      color: color12,
                      size: 15,
                    ),
                    label: Text(
                      "BUY NOW",
                      style: TextStyle(
                          color: color12,
                          fontSize: 10,
                          fontWeight: FontWeight.bold),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> video_list() {
    for (int y = 1; y <= 4; y++) {
      v = v +
          [
            video_card(
              y,
              "videographer $y",
              "We have different systems for LED screen screen systems to be used in theaters to implement virtual decorations, and they can be used to display a direct image from imaging cameras or insert a live broadcast on the LED screen from the receiver. It can also be used in banquet halls and displaying media from all devices, including the display from the flash memory. Laptops and mobiles can also be used in conferences and exhibitions",
              "01274550945",
              "assets/videogr/$y.jpg",
              (Random().nextDouble() * 250.5).roundToDouble(),
              9.9,
              12.5,
              true,
            )
          ];
    }
    return v;
  }
}
