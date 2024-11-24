// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DarkPage extends StatefulWidget {
  const DarkPage({super.key});

  @override
  State<DarkPage> createState() => _MyDarkPage();
}

class _MyDarkPage extends State<DarkPage> {
  var arrDark = [
    "assets/images/dark/dark (1).jpg",
    "assets/images/dark/dark (2).jpg",
    "assets/images/dark/dark (3).jpg",
    "assets/images/dark/dark (4).jpg",
    "assets/images/dark/dark (5).jpg",
    "assets/images/dark/dark (6).jpg",
    "assets/images/dark/dark (7).jpg",
    "assets/images/dark/dark (8).jpg",
    "assets/images/dark/dark (9).jpg",
    "assets/images/dark/dark (10).jpg",
    "assets/images/dark/dark (11).jpg",
    "assets/images/dark/dark (12).jpg",
    "assets/images/dark/dark (13).jpg",
    "assets/images/dark/dark (14).jpg",
    "assets/images/dark/dark (15).jpg",
    "assets/images/dark/dark (16).jpg",
    "assets/images/dark/dark (17).jpg",
    "assets/images/dark/dark (18).jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, "/homepage");
                    },
                    child: FaIcon(
                      FontAwesomeIcons.arrowLeft,
                      color: Colors.white,
                      size: 25,
                    ),
                  ),
                  Text(
                    "Dark Theme",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w800),
                  ),
                  FaIcon(
                    FontAwesomeIcons.solidFaceKissWinkHeart,
                    color: Colors.white,
                    size: 25,
                  )
                ],
              ),
            ),
            Expanded(
              child: GridView.builder(
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 5.0, horizontal: 5.0),
                    child: Container(
                      height: 200, // Adjust the height of the image container
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage(arrDark[index]),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  );
                },
                itemCount: arrDark.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Number of columns
                  // Space between rows
                  childAspectRatio: 6 / 10, // Aspect ratio of each item
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
