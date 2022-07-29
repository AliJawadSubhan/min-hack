
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BodyMeasurmentcontainer extends StatelessWidget {
  const BodyMeasurmentcontainer({
    Key? key,
    required this.headerText,
    required this.number,
  }) : super(key: key);

  final String headerText;
  final String number;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          headerText,
          style: GoogleFonts.raleway(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        Container(
          height: 50,
          width: 120,
          color: const Color(0xFFF8F8F8),
          child: Center(
              child: Text(
            number,
            style: GoogleFonts.raleway(color: Colors.black),
          )),
        ),
      ],
    );
  }
}
