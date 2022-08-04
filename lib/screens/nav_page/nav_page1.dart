import 'package:fi/const.dart';
import 'package:fi/screens/tab_bar/woman.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Color(0xFFF8F8F8),
        appBar: AppBar(
          toolbarHeight: 25,

          elevation: 0.00,
          backgroundColor: Colors.white,
          // leading
          bottom: TabBar(
            indicatorColor: primaryColor,
            tabs: [
              Tab(
                child: Text(
                  "Woman",
                  style: GoogleFonts.raleway(color: Colors.black, fontSize: 20),
                ),
              ),
              Tab(
                child: Text(
                  "Men",
                  style: GoogleFonts.raleway(color: Colors.black, fontSize: 20),
                ),
              ),
              Tab(
                child: Text(
                  "Children",
                  style: GoogleFonts.raleway(color: Colors.black, fontSize: 20),
                ),
              ),
            ],
          ),
        ),
        body:  TabBarView(children: [
          WomanSection(),
          Text("data"),
          Text("data"),
        ]),
      ),
    );
  }
}
