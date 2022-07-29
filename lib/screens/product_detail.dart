


import 'package:fi/const.dart';
import 'package:fi/screens/customize.pro.dart';
import 'package:fi/screens/tab_bar/info.dart';
import 'package:fi/screens/tab_bar/measurements.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {},
          child: const Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Image(
              image: AssetImage("images/Shape.png"),
            ),
          ),
        ),
        actions: [
          const Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Icon(
              Icons.favorite_border_outlined,
              color: Colors.black,
              size: 26.0,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {},
              child: const Image(
                image: AssetImage("images/Shape (1).png"),
              ),
            ),
          ),
        ],
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Container(
            margin: EdgeInsets.zero,
            height: size.height * 0.5,
            width: size.width,
            child: const Image(image: AssetImage("images/Bitmap.png")),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                SizedBox(
                  child: Text(
                    "Perfect Situation Purple Long Sleeve Dress",
                    style: TextStyle(fontSize: 17),
                  ),
                ),
                totalPrice,
              ],
            ),
          ),
          DefaultTabController(
            length: 2, // length of tabs
            initialIndex: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                TabBar(
                  indicatorColor: primaryColor,
                  indicatorPadding: const EdgeInsets.only(
                    right: 10,
                    left: 10,
                  ),
                  labelColor: primaryColor,
                  unselectedLabelColor: Colors.black,
                  tabs: [
                    Tab(
                      child: Text(
                        "Info".toUpperCase(),
                        style: GoogleFonts.raleway(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Measurments".toUpperCase(),
                        style: GoogleFonts.raleway(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 400, //height of TabBarView
                  decoration: const BoxDecoration(
                      border: Border(
                          top: BorderSide(color: Colors.grey, width: 0.5))),
                  child: TabBarView(
                    children: <Widget>[
                      const Info(),
                      Measurments(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
