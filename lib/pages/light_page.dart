// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LightPage extends StatefulWidget {
  const LightPage({super.key});

  @override
  State<LightPage> createState() => _LightPageState();
}

class _LightPageState extends State<LightPage> {
  var arrLight = [
    "assets/images/light/light (1).jpg",
    "assets/images/light/light (2).jpg",
    "assets/images/light/light (3).jpg",
    "assets/images/light/light (4).jpg",
    "assets/images/light/light (5).jpg",
    "assets/images/light/light (6).jpg",
    "assets/images/light/light (7).jpg",
    "assets/images/light/light (8).jpg",
    "assets/images/light/light (9).jpg",
    "assets/images/light/light (10).jpg",
    "assets/images/light/light (11).jpg",
    "assets/images/light/light (12).jpg",
    "assets/images/light/light (13).jpg",
    "assets/images/light/light (14).jpg",
    "assets/images/light/light (15).jpg",
    "assets/images/light/light (16).jpg",
    "assets/images/light/light (17).jpg",
    "assets/images/light/light (18).jpg",
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
                    "Light Theme",
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
                          image: AssetImage(arrLight[index]),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  );
                },
                itemCount: arrLight.length,
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
