import 'package:fi/const.dart';
import 'package:fi/screens/product_detail.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Customize extends StatelessWidget {
  Customize({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18.0, bottom: 12, top: 12),
      child: Scaffold(
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
          title: const Text.rich(
            TextSpan(
              text: "Specify Material",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                width: double.infinity,
                child: const Text.rich(
                  TextSpan(
                    text: "Material!",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    SizedBox(
                      width: 0.5,
                    ),
                    Text(
                      "Color: ",
                      style: TextStyle(fontSize: 24),
                    ),
                    CircleAvatar(
                      backgroundColor: Color(0xFFEFE8D8),
                    ),
                    CircleAvatar(
                      backgroundColor: Color(0XFF43163A),
                    ),
                    CircleAvatar(
                      backgroundColor: Color(0XFF00AEFF),
                    ),
                    CircleAvatar(
                      backgroundColor: Color(0XFFFC8233),
                    ),
                    CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 3, 135, 65),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              const Text(
                "How many Yards",
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
              ),
              Container(
                height: 52,
                width: 120,
                color: const Color(0xFFF8F8F8),
                child: const Center(
                  child: Text(
                    "5",
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 60,
                color: primaryColor,
                child: const Center(
                  child: Padding(
                    // Incase there is interactive button in user's phone and they dont accidentally quit
                    padding: EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      "Done",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ),
            ],
          ),
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
        style: TextStyle(fontSize: 22, color: pre),
      ),
    );
  }
}

/*  Text(
                "Material",
                style: style1,
              ),
              Text(
                "Lace",
                style: style,
              ),
              Text(
                "Ankara",
                style: style,
              ),
              Text(
                "Guiena",
                style: style,
              ),
              Text(
                "Linen",
                style: style,
              ),
              Text(
                "Silk",
                style: style,
              ),
              Text(
                "Material",
                style: style,
              ),
              Text(
                "Material",
                style: style,
              )
              */