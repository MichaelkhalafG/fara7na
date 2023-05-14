import 'package:flutter/material.dart';
import 'package:wedding_orgnaizer/main.dart';
import 'package:wedding_orgnaizer/pages/container.dart';
import 'package:wedding_orgnaizer/pages/models/hall.dart';
import 'package:wedding_orgnaizer/pages/home/michael_lib.dart';
import 'package:image_picker/image_picker.dart';

class add_product extends StatefulWidget {
  add_product({super.key});

  @override
  State<add_product> createState() => _add_productState();
}

class _add_productState extends State<add_product> {
  String _image = "";
  final _hall_name_controller = TextEditingController();
  final _hall_duration_controller = TextEditingController();
  final _hall_rate_controller = TextEditingController();
  final _hall_details_controller = TextEditingController();
  final _hall_price_controller = TextEditingController();
  final _hall_capacityRange_controller = TextEditingController();
  final _hall_location_controller = TextEditingController();
  final _image_controller = TextEditingController();
  bool _details_of_dropdowen = false;
  String errors = "\n";
  // String _image_path = "";

  int x = 7;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: const Color(0xFFF2F2F2),
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50.0),
          child: AppBar(
            title: Text(
              "add hall",
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
          // const SizedBox(
          //   height: 15,
          // ),
          // Center(
          //   child: Text(
          //     "add your hall",
          //     style: GoogleFonts.bebasNeue(
          //         color: color10, fontSize: 25, fontWeight: FontWeight.bold),
          //   ),
          // ),
          // Divider(
          //   height: 10,
          //   thickness: 1,
          //   color: color11,
          //   indent: 80,
          //   endIndent: 80,
          // ),
          // const SizedBox(
          //   height: 30,
          // ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 3,
            child: Stack(children: [
              Container(
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(103, 255, 255, 255),
                  ),
                  margin: EdgeInsets.only(top: 0),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 3,
                  child: _image == ""
                      ? Image.network(
                          'https://cdn.pixabay.com/photo/2016/11/23/17/56/beach-1854076_960_720.jpg')
                      : Image.network(_image)),
              Align(
                  child: Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(47, 255, 255, 255),
                ),
                margin: EdgeInsets.only(top: 0),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 3,
              )),
              Align(
                  alignment: Alignment.center,
                  child: Container(
                      padding: EdgeInsets.fromLTRB(20, 0, 5, 0),
                      child: build_text_fild('image url', 'enter image url',
                          _image_controller, false))),
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(40)),
                    color: color5,
                  ),
                  width: MediaQuery.of(context).size.width / 5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                          onPressed: () {
                            setState(() {
                              // get_image_from_gallery();
                              _image = _image_controller.text;
                            });
                          },
                          icon: Icon(
                            Icons.image,
                            color: color10,
                          )),
                      //   IconButton(
                      //       onPressed: () {
                      //         setState(() {
                      //           get_image_from_camera();
                      //         });
                      //       },
                      //       icon: Icon(
                      //         Icons.camera_alt,
                      //         color: color10,
                      //       )),
                    ],
                  ),
                ),
              ),
              Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(20, 0, 5, 0),
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.only(bottomLeft: Radius.circular(40)),
                      color: color5,
                    ),
                    child: IconButton(
                        onPressed: () {
                          setState(() {
                            _image = "";
                          });
                        },
                        icon: const Icon(Icons.exit_to_app)),
                  )),
            ]),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Column(
              children: [
                // _duration
                // _image
                // _rate
                // _price
                // _name
                // _details
                // _capacityRange
                build_text_fild("hall name", "enter hall name",
                    _hall_name_controller, false),
                build_text_fild("hall duration", "enter hall duration",
                    _hall_duration_controller, false),
                build_text_fild("hall rate", "enter hall rate",
                    _hall_rate_controller, false),
                build_text_fild("hall price", "enter hall price",
                    _hall_price_controller, false),
                build_text_fild("hall details", "enter hall details",
                    _hall_details_controller, false),
                build_text_fild(
                    "hall capacity Range",
                    "enter hall capacity Range",
                    _hall_capacityRange_controller,
                    false),
                build_text_fild("hall location", "enter hall location",
                    _hall_location_controller, false),
                const SizedBox(
                  height: 10,
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      x++;
                      validate(
                          _hall_name_controller.text,
                          _hall_duration_controller.text,
                          _hall_rate_controller.text,
                          _hall_details_controller.text,
                          _hall_price_controller.text,
                          _hall_capacityRange_controller.text,
                          _hall_location_controller.text,
                          _image_controller.text);
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    width: 350,
                    child: Center(
                      child: Text("add to home page",
                          style: TextStyle(
                              color: color10,
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
                  height: 30,
                ),
              ],
            ),
          ),
        ]));
  }

  Widget build_text_fild(String labletext, String placeholdertext,
      TextEditingController controller, bool is_dropdown) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
        child: TextField(
          controller: controller,
          decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
              suffixIcon: is_dropdown
                  ? IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_downward_rounded))
                  : null,
              contentPadding: const EdgeInsets.only(bottom: 5, left: 10),
              labelText: labletext,
              labelStyle: TextStyle(color: color10),
              floatingLabelBehavior: FloatingLabelBehavior.always,
              hintText: placeholdertext,
              hintStyle: TextStyle(
                color: color10,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              )),
        ));
  }

  // get_image_from_gallery() async {
  //   final ImagePicker _picker = ImagePicker();
  //   final image = await _picker.pickImage(source: ImageSource.gallery);
  //   if (image != null) {
  //     File img = File(image.path);
  //     _image_path = image.path;
  //     print(_image_path);
  //     setState(() {
  //       _image = img;
  //     });
  //   } else {
  //     _image == null
  //         ? Image.network(
  //             'https://cdn.pixabay.com/photo/2016/11/23/17/56/beach-1854076_960_720.jpg')
  //         : Image.file(_image!);
  //   }
  // }

  // get_image_from_camera() async {
  //   final ImagePicker _picker = ImagePicker();
  //   final image = await _picker.pickImage(source: ImageSource.camera);
  //   if (image != null) {
  //     File img = File(image.path);
  //     setState(() {
  //       _image = img;
  //     });
  //   } else {
  //     _image == null
  //         ? Image.network(
  //             'https://cdn.pixabay.com/photo/2016/11/23/17/56/beach-1854076_960_720.jpg')
  //         : Image.file(_image!);
  //   }
  // }

  validate(
      String hall_name,
      String hall_duration,
      String hall_rate,
      String hall_details,
      String hall_price,
      String hall_capacityRange,
      String hall_location,
      String image_url) async {
    errors = "\n";
    double duration = 0.0;
    double rate = 0.0;
    double price = 0.0;
    int capacityRange = 0;
    if (hall_duration.length < 2) {
      errors = errors +
          "Please enter number piger than 0 in hall duration field \n \n";
    } else {
      setState(() {
        duration = double.parse('${hall_duration}');
        assert(duration is double);
      });
    }
    if (hall_rate.length < 1) {
      errors =
          errors + "Please enter number piger than 0 in hall rate field \n \n";
    } else {
      setState(() {
        rate = double.parse('${hall_rate}');
        assert(rate is double);
      });
    }
    if (hall_price.length < 2) {
      errors =
          errors + "Please enter number piger than 0 in hall price field \n \n";
    } else {
      setState(() {
        price = double.parse('${hall_price}');
        assert(price is double);
      });
    }
    if (hall_capacityRange.length < 2) {
      errors = errors +
          "Please enter number piger than 0 in hall capacity range field \n \n";
    } else {
      setState(() {
        capacityRange = int.parse('${hall_capacityRange}');
        assert(capacityRange is int);
      });
    }

    if (hall_name.trim().length < 5) {
      errors =
          errors + "Please enter more then 5 letters in hall name field \n \n";
    }

    if (hall_details.trim().length < 10) {
      errors = errors +
          "Please enter more then 10 letters in hall details field \n \n";
    }

    if (hall_location.trim().length < 5) {
      errors = errors +
          "Please enter more then 5 letters in hall location field \n \n";
    }
    if (image_url.trim().length < 5) {
      errors = errors + "Please enter correct url in image url  field \n \n";
    }

    if (errors == "\n") {
      setState(() {
        halls = [
          Hall([
            duration,
            image_url,
            rate,
            price,
            hall_name,
            hall_details,
            hall_location,
            x,
            capacityRange
          ])
        ];
        hall_content();
        print(halls);
      });
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
                  "Have a good day \nWe are glad to serve you\nyour wedding hall added to home page \n",
                  style: TextStyle(color: color13),
                ),
              ),
            ));
          });
    }
  }
}
