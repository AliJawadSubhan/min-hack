import 'package:fi/const.dart';
import 'package:fi/screens/nav_page/nav_page1.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  final pages = [
    const HomePage(),
    const Center(
      child: Text("data2"),
    ),
    const Center(
      child: Text("data3"),
    ),
    const Center(
      child: Text("data4"),
    ),
  ];
  int pageindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[pageindex],
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.00,
        leading: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: GestureDetector(
            onTap: () {},
            child: const CircleAvatar(
              // radius: 30.0,
              child: ClipOval(
                child: Image(
                  image: AssetImage("images/avatar.png"),
                ),
              ),
            ),
          ),
        ),
        title: Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(100, 176, 190, 197),
            borderRadius: BorderRadius.circular(50),
          ),
          height: 40.0,
          child: Center(
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xFFF8F8F8),
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
                hintText: "Search ",
                hintStyle: GoogleFonts.roboto(fontSize: 20),
                border: OutlineInputBorder(),
                suffixIcon: Icon(Icons.search, size: 25, color: Colors.white),
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 70,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageindex = 0;
                });
              },
              icon: pageindex == 0
                  ? const Icon(
                      Icons.home_outlined,
                      color: primaryColor,
                      size: 35,
                    )
                  : const Icon(
                      Icons.home_filled,
                      color: Color(0xFFBBBACD),
                      size: 35,
                    ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageindex = 1;
                });
              },
              icon: pageindex == 1
                  ? const Icon(
                      Icons.work_outline_outlined,
                      color: primaryColor,
                      size: 35,
                    )
                  : const Icon(
                      Icons.work_rounded,
                      color: Color(0xFFBBBACD),
                      size: 35,
                    ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageindex = 2;
                });
              },
              icon: pageindex == 2
                  ? const Icon(
                      Icons.settings_outlined,
                      color: primaryColor,
                      size: 35,
                    )
                  : const Icon(
                      Icons.settings_rounded,
                      color: Color(0xFFBBBACD),
                      size: 35,
                    ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageindex = 3;
                });
              },
              icon: pageindex == 3
                  ? const Icon(
                      Icons.add_sharp,
                      color: primaryColor,
                      size: 35,
                    )
                  : const Icon(
                      Icons.add_sharp,
                      color: Color(0xFFBBBACD),
                      size: 35,
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
