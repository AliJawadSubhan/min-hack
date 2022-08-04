import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

import '../../const.dart';

class WomanSection extends StatelessWidget {
  WomanSection({Key? key}) : super(key: key);

  final imageslink = [
    "https://avatarfiles.alphacoders.com/793/79319.png",
    "https://avatarfiles.alphacoders.com/793/79319.png",
    "https://avatarfiles.alphacoders.com/793/79319.png",
    "https://avatarfiles.alphacoders.com/793/79319.png",
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.all(12),
      child: SingleChildScrollView(
        child: Center(
          child: Container(
            width: size.width * 0.8,
            color: Colors.lightBlue,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  PostHeader(),
                  SizedBox(
                    height: 9,
                  ),
                  Text(commmentText),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Image.network(
                            " https://avatarfiles.alphacoders.com/793/79319.png"),
                      ),
                      Expanded(
                        child: Image.network(
                            " https://avatarfiles.alphacoders.com/793/79319.png"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class PostHeader extends StatelessWidget {
  const PostHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: Colors.black,
        ),
        SizedBox(
          width: 8,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Username!"),
              Row(
                children: [
                  Text("Profession"),
                ],
              )
            ],
          ),
        ),
        Icon(Icons.favorite),
        Text.rich(TextSpan(
            text: "",
            style: GoogleFonts.montserrat(),
            children: const [
              TextSpan(
                text: "\$ 25.99,",
                style: TextStyle(color: primaryColor),
              ),
            ])),
      ],
    );
  }
}
