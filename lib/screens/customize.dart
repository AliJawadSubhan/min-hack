import 'package:fi/const.dart';
import 'package:fi/screens/dashboard.dart';
import 'package:fi/screens/product_detail.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Customize extends StatelessWidget {
  Customize({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.00,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(
              context,
              MaterialPageRoute(builder: (context) => const ProductDetail()),
            );
          },
        ),
        title: Text.rich(
          TextSpan(
            text: "Specify Material",
            style: GoogleFonts.abrilFatface(color: Colors.black, fontSize: 23),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              width: double.infinity,
              child: Text.rich(
                TextSpan(
                  text: "Material!",
                  style: GoogleFonts.raleway(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 36),
                ),
              ),
            ),
            TextContainer(
              maintext: "Lace",
              pre: primaryColor,
            ),
            TextContainer(
              maintext: "Guiena",
            ),
            TextContainer(
              maintext: "Linen",
            ),
            TextContainer(
              maintext: "Silk",
            ),
            TextContainer(
              maintext: "wool",
            ),
            TextContainer(
              maintext: "Cotten",
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    SizedBox(
                      width: 0.5,
                    ),
                    Text(
                      "Color: ",
                      style: TextStyle(fontSize: 33),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundColor: Color(0xFFEFE8D8),
                        radius: 32,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundColor: Color(0XFF43163A),
                        radius: 32,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundColor: Color(0XFF00AEFF),
                        radius: 32,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundColor: Color(0XFFFC8233),
                        radius: 32,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 3, 135, 65),
                        radius: 32,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "How many Yards",
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                ),
                Container(
                  width: 100,
                  height: 42,
                  color: Color(0xFFF8F8F8),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "5",
                          style: GoogleFonts.raleway(fontSize: 21),
                        ),
                        const Icon(
                          Icons.arrow_drop_down,
                          size: 32,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            // GestureDetector(
            //     child: Container(
            //       alignment: Alignment.bottomCenter,
            //       width: double.infinity,
            //       height: 60,
            //       color: primaryColor,
            //       child: const Center(
            //         child: Padding(
            //           // Incase there is interactive button in user's phone and they dont accidentally quit
            //           padding: EdgeInsets.only(bottom: 8.0),
            //           child: Text(
            //             "Done",
            //             style: TextStyle(color: Colors.white, fontSize: 20),
            //           ),
            //         ),
            //       ),
            //     ),
            //     onTap: () {
            //       Navigator.push(
            //         context,
            //         MaterialPageRoute(builder: (context) => const DashBoard()),
            //       );
            //     }),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: primaryColor,
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: GestureDetector(
              child: Text(
                // TextAlignVertical : TextAlignVertical.center,
                "Done",
                textAlign: TextAlign.center,
                style: GoogleFonts.raleway(color: Colors.white, fontSize: 17),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const DashBoard()),
                );
              }),
        ),
      ),
    );
  }
}

class TextContainer extends StatelessWidget {
  TextContainer({Key? key, this.pre, required this.maintext}) : super(key: key);

  Color? pre = Colors.black;
  final String maintext;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 42,
      width: double.infinity,
      child: Text(
        maintext,
        style: GoogleFonts.raleway(fontSize: 30),
      ),
    );
  }
}
