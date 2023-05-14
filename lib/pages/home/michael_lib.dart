import 'package:flutter/material.dart';

// Color color1 = const Color(0xFFF0CAA3);
// Color color2 = const Color(0xFFC060A1);
// Color color3 = const Color(0xFF00005C);
// Color color4 = const Color(0xFF3B185F);
// Color color6 = const Color(0xFF3350A6);
// Color color7 = const Color(0xFF0554F2);
// Color color8 = const Color(0xFF1374F2);
// Color color9 = const Color(0xFF0DD965);
Color color5 = const Color(0xFFF2F2F2);
Color color10 = const Color(0xFF251B37);
Color color11 = const Color(0xFF372948);
Color color12 = const Color(0xFFFFCACA);
Color color13 = const Color(0xFFFFECEF);

class data {
  String type_of_data;
  String value_of_data;
  data(this.type_of_data, this.value_of_data);
}

class info_card extends StatelessWidget {
  final data userData;
  const info_card(this.userData);
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        userData.type_of_data,
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 10,
            letterSpacing: 4,
            color: color10),
      ),
      Text(
        userData.value_of_data,
        style: TextStyle(
            // fontFamily: 'playfair',
            fontWeight: FontWeight.bold,
            fontSize: 15,
            letterSpacing: 2,
            color: color11),
      ),
      Divider(
        height: 8,
        color: color10,
        thickness: 1,
      ),
      // TextButton.icon(
      //     onPressed: () {},
      //     icon: Icon(Icons.delete),
      //     label: Text("delete this")),
      const SizedBox(
        height: 35,
      ),
    ]);
  }
}


// Widget build_text_fild(
//     String labletext, String placeholdertext, bool ispassword) {
//   bool is_password_obscure = true;
//   return Padding(
//       padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
//       child: TextField(
//         obscureText: ispassword ? is_password_obscure : false,
//         decoration: InputDecoration(
//             suffixIcon: ispassword
//                 ? IconButton(
//                     onPressed: () {
//                       setState(() {
//                         is_password_obscure = !is_password_obscure;
//                       });
//                     },
//                     icon: const Icon(Icons.remove_red_eye_rounded),
//                     color: color10,
//                   )
//                 : null,
//             contentPadding: const EdgeInsets.only(bottom: 5),
//             labelText: labletext,
//             floatingLabelBehavior: FloatingLabelBehavior.always,
//             hintText: placeholdertext,
//             hintStyle: TextStyle(
//                 color: color10, fontWeight: FontWeight.bold, fontSize: 20)),
//       ));
// }
// Widget categories_card(int id, String name, double price, bool availability,
//     String photo, double duration, bool is_favorite) {
//   return Padding(
//       padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
//       child: InkWell(
//         onTap: () {
//           Navigator.pushNamed(context, '/details');
//         },
//         child: Container(
//           decoration: BoxDecoration(
//               color: color10,
//               borderRadius: BorderRadius.circular(15),
//               boxShadow: [
//                 BoxShadow(color: color13, spreadRadius: 4, blurRadius: 5)
//               ]),
//           child: Column(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.all(0),
//                 child: Padding(
//                   padding: const EdgeInsets.fromLTRB(5, 5, 5, 0),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.end,
//                     children: [
//                       Container(
//                         height: 30,
//                         child: FavoriteButton(
//                           iconDisabledColor: color11,
//                           iconColor: color12,
//                           iconSize: 50,
//                           valueChanged: (is_favorite) {
                            // this.is_favorite = isFavorite;
                            // print('Is Favorite $is_favorite)');
                            // print(categories_card(id, name, price, availability,
                            //     photo, duration, is_favorite));
//                           },
//                         ),
//                       )
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
//                     ],
//                   ),
//                 ),
//               ),
//               Center(
//                 child: CircleAvatar(
//                   backgroundImage: AssetImage(photo),
//                   radius: 55.0,
//                 ),
//               ),
//               Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   const SizedBox(
//                     height: 10,
//                   ),
//                   Text(
//                     '$price \$',
//                     style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                         fontSize: 15,
//                         letterSpacing: 2,
//                         color: color13),
//                   ),
//                   Text(
//                     name,
//                     style: TextStyle(
                        // fontWeight: FontWeight.bold,
//                         fontFamily: 'playfair',
//                         fontSize: 15,
//                         letterSpacing: 4,
//                         color: color13),
//                   ),
//                   const SizedBox(
//                     height: 15,
//                   ),
//                 ],
//               ),
//               Padding(
//                 padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
//                 child: Container(
//                   height: 1,
//                   color: color12,
//                 ),
//               ),
//               TextButton.icon(
//                   onPressed: () {},
//                   icon: Icon(
//                     Icons.shopping_bag,
//                     color: color12,
//                     size: 15,
//                   ),
//                   label: Text(
//                     "BUY NOW",
//                     style: TextStyle(
//                         color: color12,
//                         fontSize: 10,
//                         fontWeight: FontWeight.bold),
//                   ))
//             ],
//           ),
//         ),
        // ),
//       ));
// }
// import 'package:flutter/material.dart';
// import 'package:wedding_orgnaizer/pages/home/category_products.dart';
// import 'michael_lib.dart';

// class category_details extends StatelessWidget {
//   final id,
//       name,
//       price,
//       availability,
//       photo,
//       duration,
//       is_favorite,
//       descreption;
//   const category_details(
//       {this.id,
//       this.name,
//       this.price,
//       this.availability,
//       this.photo,
//       this.duration,
//       this.is_favorite,
//       this.descreption});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: color5,
//       appBar: AppBar(
//         backgroundColor: color10,
//         title: Center(
//           child: Text(
//             'category details',
//             style: TextStyle(
//               fontFamily: 'playfair',
//               fontWeight: FontWeight.bold,
//               color: color12,
//               letterSpacing: 3,
//             ),
//           ),
//         ),
//       ),
//       bottomNavigationBar: BottomAppBar(
//         shape: const CircularNotchedRectangle(),
//         notchMargin: 5,
//         elevation: 30,
//         clipBehavior: Clip.antiAlias,
//         // color: color10,
//         child: SizedBox(
//           height: 60.0,
//           child: Padding(
//             padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Expanded(
//                     child: Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     IconButton(
//                       padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
//                       onPressed: () {
//                         Navigator.pushNamed(context, '/home');
//                       },
//                       icon: Icon(
//                         Icons.home,
//                         color: color11,
//                       ),
//                     ),
//                     IconButton(
//                       padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
//                       onPressed: () {
//                         Navigator.pushNamed(context, '/category');
//                       },
//                       icon: Icon(
//                         Icons.category,
//                         color: color11,
//                       ),
//                     ),
//                   ],
//                 )),
//                 Expanded(
//                     child: Row(
//                         mainAxisAlignment: MainAxisAlignment.end,
//                         children: [
//                       IconButton(
//                         padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
//                         onPressed: () {
//                           Navigator.pushNamed(context, '/');
//                         },
//                         icon: Icon(
//                           Icons.image,
//                           color: color11,
//                         ),
//                       ),
//                       IconButton(
//                         padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
//                         onPressed: () {
//                           Navigator.pushNamed(context, '/profile');
//                         },
//                         icon: Icon(
//                           Icons.person_rounded,
//                           color: color11,
//                         ),
//                       ),
//                     ])),
//               ],
//             ),
//           ),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {},
//         backgroundColor: color12,
//         child: Icon(
//           Icons.favorite,
//           color: color11,
//         ),
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//       body: Padding(
//         padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
//         child: ListView(children: [
//           Column(children: [
//             const SizedBox(
//               height: 20,
//             ),
//             Text(
//               name,
//               style: TextStyle(
//                 color: color10,
//                 fontSize: 40,
//                 // fontWeight: FontWeight.bold,
//                 fontFamily: 'lobster',
//               ),
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             Center(
//               child: CircleAvatar(
//                 backgroundImage: AssetImage(photo),
//                 radius: 150,
//               ),
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             Text(
//               '\$ $price ',
//               style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                   fontSize: 35,
//                   letterSpacing: 2,
//                   color: color10),
//             ),
//             const SizedBox(
//               height: 10,
//             ),
//             Text(
//               descreption,
//               style: TextStyle(
//                 // fontWeight: FontWeight.bold,
//                 fontFamily: 'playfair',
//                 fontSize: 15,
//                 letterSpacing: 4,
//                 color: color11,
//               ),
//             ),
//             const SizedBox(
//               height: 25,
//             ),
//             TextButton(
//               onPressed: () {},
//               child: Container(
//                   height: 50,
//                   width: MediaQuery.of(context).size.width - 100,
//                   decoration: BoxDecoration(
//                       color: color10,
//                       borderRadius: BorderRadius.circular(50),
//                       boxShadow: [
//                         BoxShadow(
//                             color: color13, spreadRadius: 4, blurRadius: 5)
//                       ]),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         "BUY NOW",
//                         style: TextStyle(
//                             color: color13,
//                             fontSize: 20,
//                             fontWeight: FontWeight.bold),
//                       ),
//                     ],
//                   )),
//             )
//           ]),
//         ]),
//       ),
//     );
//   }
// }
