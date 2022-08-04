import 'package:fi/const.dart';
import 'package:fi/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
    required this.image,
    required this.ranking,
    required this.outertext,
    required this.innertext,
  }) : super(key: key);

  final String image;

  final String ranking;

  final String outertext;

  final String innertext;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              image,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
            child: Center(
          child: Column(
            children: [
              Stack(
                children: const [
                  Image(
                    height: 40.0,
                    width: 40.0,
                    image: AssetImage(
                      "images/Vector.png",
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              SizedBox(
                height: size.height * 0.17,
              ),
              Expanded(
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text.rich(
                            TextSpan(
                              text: 'NO  ',
                              style: const TextStyle(
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                              children: <TextSpan>[
                                TextSpan(
                                    text: "1",
                                    style: GoogleFonts.abrilFatface(
                                        fontSize: 42, color: Colors.white)),
                              ],
                            ),
                          ),
                          const Text(
                            'Featured',
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: primaryColor),
                          ),
                          Text(
                            'Tailored',
                            style: GoogleFonts.abrilFatface(
                                fontSize: 45, color: Colors.white),
                          ),
                          Text.rich(
                            TextSpan(
                              text: outertext,
                              style: GoogleFonts.raleway(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                              children: <TextSpan>[
                                TextSpan(
                                    text: innertext,
                                    style: GoogleFonts.raleway(
                                        fontSize: 20, color: Colors.white)),
                              ],
                            ),
                          ),
                          const SizedBox(height: 30),
                          SizedBox(
                            height: 65,
                            width: 300,
                            child: TextButton(
                                style: TextButton.styleFrom(
                                  primary: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      side: const BorderSide(
                                          color: Colors.white,
                                          width: 2,
                                          style: BorderStyle.solid),
                                      borderRadius: BorderRadius.circular(8)),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Login()),
                                  );
                                },
                                child: Text('Shop Now',
                                    style: GoogleFonts.raleway(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w900))),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
