import 'package:fi/const.dart';
import 'package:fi/screens/product_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../custom_widget/textfieldcustom.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(color: primaryColor, image: AssetImage("images/Vector.png")),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(color: Colors.grey, spreadRadius: 3, blurRadius: 7),
                ],
              ),
              width: size.width * 0.8,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      HomeContainers(
                        Icons.person,
                        hinttext: "Your email",
                      ),
                      HomeContainers(
                        Icons.lock,
                        hinttext: "password",
                      ),
                      Container(
                        height: 40,
                        width: 90,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: primaryColor,
                          ),
                          onPressed: () {},
                          child: const Text("Login"),
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                                margin: const EdgeInsets.only(
                                    left: 10.0, right: 20.0),
                                child: const Divider(
                                  color: Colors.black,
                                  height: 36,
                                )),
                          ),
                          const Text("OR"),
                          Expanded(
                            child: Container(
                                margin: const EdgeInsets.only(
                                    left: 10.0, right: 20.0),
                                child: const Divider(
                                  height: 36,
                                  color: Colors.black,
                                )),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 40,
                        width: 150,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: primaryColor,
                          ),
                          onPressed: () {
                            Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const ProductDetail()),
                                  );
                          },
                          child: const Text("Login with phone"),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 8, left: 10, right: 20, bottom: 10),
                    child: Column(
                      children: const [
                        Text(
                          "Create account",
                          style: TextStyle(
                            letterSpacing: 10,
                            color: Color(0xFF4A4242),
                          ),
                        ),
                        Divider(
                          height: 36,
                          color: Colors.black,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
