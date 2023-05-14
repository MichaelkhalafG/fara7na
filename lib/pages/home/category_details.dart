import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:carousel_pro/carousel_pro.dart';
import 'package:favorite_button/favorite_button.dart';
import 'package:readmore/readmore.dart';
import 'package:wedding_orgnaizer/pages/models/product.dart';

Color color5 = const Color(0xFFF2F2F2);
Color color10 = const Color(0xFF251B37);
Color color11 = const Color(0xFF372948);
Color color12 = const Color(0xFFFFCACA);
Color color13 = const Color(0xFFFFECEF);

class productpage extends StatelessWidget {
  Product prod;
  productpage({required this.prod, super.key});

  bool isReadMore = false;

  @override
  Widget build(BuildContext context) {
    Product prod1 = prod;
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          child: ListView(
            children: <Widget>[
              Stack(children: [
                Container(
                  decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black,
                            spreadRadius: 4,
                            blurRadius: 30,
                            offset: Offset(0, 2))
                      ],
                      borderRadius: BorderRadius.only(
                        // topRight: Radius.circular(40),
                        // topLeft: Radius.circular(40),
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      )),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                        // topRight: Radius.circular(60),
                        // topLeft: Radius.circular(60),
                        bottomRight: Radius.circular(30),
                        bottomLeft: Radius.circular(30)),
                    child: SizedBox(
                      height: 400.0,
                      width: double.infinity,
                      child: Carousel(
                          boxFit: BoxFit.fill,
                          autoplay: true,
                          animationCurve: Curves.fastOutSlowIn,
                          animationDuration: const Duration(milliseconds: 10),
                          dotSize: 6.0,
                          dotIncreasedColor: color11,
                          dotBgColor: const Color.fromRGBO(0, 0, 0, 0),
                          dotPosition: DotPosition.bottomCenter,
                          dotVerticalPadding: 0.0,
                          showIndicator: true,
                          indicatorBgPadding: 15.0,
                          images: [
                            AssetImage('${prod1.returnProductData('images')}')
                          ]),
                    ),
                  ),
                ),
                Container(
                  width: 30,
                  height: 30,
                  margin: const EdgeInsets.all(25),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      border:
                          Border.all(width: 3, color: Colors.grey.shade400)),
                  child: IconButton(
                    padding: const EdgeInsets.only(right: 1),
                    icon: const Icon(Icons.arrow_back_ios_rounded, size: 16),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                )
              ]),
              Padding(
                padding: const EdgeInsets.fromLTRB(25, 50, 25, 0),
                child: Column(children: <Widget>[
                  // first raw : name and ratting
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        '${prod1.returnProductData('name')}',
                        style: TextStyle(
                          fontFamily: 'raleway',
                          fontSize: 18,
                          letterSpacing: 0.5,
                          fontWeight: FontWeight.bold,
                          color: color11,
                        ),
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            '${prod1.returnProductData('rate')}',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: color11),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 60,
                    child: Row(
                      children: [
                        Icon(Icons.handshake,
                            color: color11,
                            size: 20,
                            shadows: [
                              Shadow(
                                color: color12,
                                blurRadius: 20,
                              ),
                            ]),
                        const SizedBox(
                          width: 15,
                        ),
                        // Text('${prod1.returnHallData('location')}',
                        //     style: const TextStyle(
                        //       letterSpacing: 1,
                        //       fontWeight: FontWeight.w500,
                        //       color: Colors.black38,
                        //       wordSpacing: 1,
                        //       fontSize: 12,
                        //     )),
                      ],
                    ),
                  ),
                  SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'EGP ${prod1.returnProductData('price')}',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: color11,
                              letterSpacing: 1),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 15),
                          decoration: BoxDecoration(
                              color: color10,
                              borderRadius: const BorderRadius.all(
                                  Radius.elliptical(10, 10))),
                          child: Column(
                            children: [
                              const Icon(
                                Icons.event_available,
                                size: 30,
                                color: Colors.white,
                              ),
                              Text(
                                '${prod1.returnProductData('availability')}',
                                style: const TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  //Description
                  Container(
                      margin: const EdgeInsets.symmetric(vertical: 15),
                      width: double.infinity,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const Text(
                              'Description:',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(37, 27, 55, 50),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            SingleChildScrollView(
                              child: ReadMoreText(
                                '${prod1.returnProductData('description')}',
                                trimLines: 3,
                                style: const TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w500,
                                  overflow: TextOverflow.ellipsis,
                                  color: Colors.black38,
                                ),
                                colorClickableText:
                                    const Color.fromARGB(255, 37, 27, 55),
                                trimMode: TrimMode.Line,
                                trimCollapsedText: 'Read more',
                                trimExpandedText: ' Read less',
                              ),
                            ),
                          ])),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                              // borderRadius: BorderRadius.circular(30),
                              // border: Border.all(color: color10)
                              ),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: SizedBox(
                              height: 30,
                              width: 30,
                              child: FavoriteButton(
                                iconColor: Colors.red,
                                iconDisabledColor: color10,
                                iconSize: 50,
                                // ignore: no_leading_underscores_for_local_identifiers
                                valueChanged: (_isFavorite) {},
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          child: TextButton(
                              style: TextButton.styleFrom(
                                backgroundColor: color10,
                                foregroundColor: Colors.white,
                              ),
                              onPressed: () {
                                Navigator.pushNamed(context, '/pay');
                              },
                              child: Row(
                                children: const [
                                  Icon(
                                    Icons.shopping_cart,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text('Reserve Now',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'raleway',
                                          letterSpacing: 1))
                                ],
                              )),
                        ),
                      ],
                    ),
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
