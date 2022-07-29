import 'package:flutter/material.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                hintText: "Search Users..",
                hintStyle: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  color: Color(0xFFB0BEC5),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                suffixIcon:
                    const Icon(
                      Icons.search, size: 25, color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
