import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';
import '../models/hall.dart';

Color color5 = const Color(0xFFF2F2F2);
Color color10 = const Color(0xFF251B37);
Color color11 = const Color(0xFF372948);
Color color12 = const Color(0xFFFFCACA);
Color color13 = const Color(0xFFFFECEF);
Color color14 = const Color(0xFFE894CA);

class HallCard extends StatelessWidget {
  final Hall hall;

  const HallCard(this.hall, {super.key});
  Widget img() {
    if ((hall.returnHallData('image')).contains('http')) {
      return Image.network('${hall.returnHallData('image')}');
    } else {
      return Image.asset('${hall.returnHallData('image')}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/hallPage', arguments: hall);
      },
      child: Container(
        decoration: BoxDecoration(
            color: color10,
            boxShadow: [
              BoxShadow(
                  color: color10,
                  spreadRadius: 1,
                  blurRadius: 4,
                  offset: const Offset(0, 2))
            ],
            borderRadius: BorderRadius.circular(15)),
        margin: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 16.0),
        child: SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15)),
                    child: img(),
                  ),
                  Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: color10,
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(color: color11)),
                          child: Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: FavoriteButton(
                              iconColor: Colors.pink.shade400,
                              iconDisabledColor: Colors.white,
                              iconSize: 35,
                              valueChanged: (_isFavorite) {},
                            ),
                          ),
                        ),
                      ))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                        bottom: 20.0, left: 10.0, top: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          hall.returnHallData('name'),
                          style: const TextStyle(
                              fontFamily: 'raleway',
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              letterSpacing: 2),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            const Icon(
                              Icons.payments,
                              color: Colors.white,
                              size: 20,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              '${hall.returnHallData('price').toString()} LE',
                              style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                  letterSpacing: 1),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    height: 50,
                    width: 1,
                    margin: const EdgeInsets.only(left: 10),
                  ),
                  Row(
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: Row(
                            children: const [
                              Icon(
                                Icons.shopping_cart,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text('Reserve Now',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'raleway',
                                      letterSpacing: 1))
                            ],
                          )),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
