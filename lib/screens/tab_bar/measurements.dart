import 'package:fi/const.dart';
import 'package:fi/screens/customize.pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../custom_widget/body_meas.dart';

class Measurments extends StatelessWidget {
  Measurments({Key? key}) : super(key: key);

  var color = [
    const Color(0xFF363641),
    const Color(0xFFEFE8D8),
    const Color(0XFF43163A),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  BodyMeasurmentcontainer(
                    headerText: "Height",
                    number: "47",
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  BodyMeasurmentcontainer(
                    headerText: "Length",
                    number: "34",
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  BodyMeasurmentcontainer(
                    headerText: "Breadth",
                    number: "76",
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  totalPrice,
                  const CircleAvatar(
                    backgroundColor: Color(0xFF363641),
                  ),
                  const CircleAvatar(
                    backgroundColor: Color(0xFFEFE8D8),
                  ),
                  const CircleAvatar(
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 112,
                      backgroundColor: Color(0XFF43163A),
                    ),
                  ),
                  Container(
                    width: 80,
                    height: 32,
                    color: const Color(0xFFF8F8F8),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "1",
                            style: GoogleFonts.raleway(),
                          ),
                          Icon(Icons.arrow_drop_down),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Do you want to use this Material?",
                style: GoogleFonts.raleway(fontSize: 22),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: primaryColor,
                      ),
                      onPressed: () {},
                      child: const Text(
                        "Yes",
                        style: TextStyle(color: Colors.white),
                      )),
                  SizedBox(
                    width: 12,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xFFF8F8F8),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Customize()),
                        );
                      },
                      child: const Text(
                        "No",
                        style: TextStyle(color: Colors.black),
                      )),
                ],
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            const Divider(
              height: 36,
              color: Colors.black,
            ),
            Row(
              children: [
                Text.rich(TextSpan(
                    text: "Total: ",
                    style: GoogleFonts.montserrat(),
                    children: const [
                      TextSpan(
                        text: "\$ 25.99,",
                        style: TextStyle(color: primaryColor),
                      ),
                    ])),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: const Text('Add to bag'),
        icon: const Icon(Icons.shop_2),
        backgroundColor: Colors.pink,
      ),
    );
  }
}
