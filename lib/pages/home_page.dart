// ignore_for_file: prefer_const_constructors, sort_child_properties_last, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomePageState();
}

class _HomePageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FaIcon(
                    FontAwesomeIcons.bars,
                    color: Colors.white,
                    size: 25,
                  ),
                  Container(
                    child: Text(
                      "Wallpaper",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                  FaIcon(
                    FontAwesomeIcons.solidFaceKissWinkHeart,
                    color: Colors.white,
                    size: 25,
                  )
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FaIcon(
                      FontAwesomeIcons.house,
                      color: Colors.white,
                      size: 23,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, "/darkpage");
                      },
                      child: Container(
                        child: FaIcon(
                          FontAwesomeIcons.moon,
                          color: Colors.white,
                          size: 23,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, "/lightpage");
                      },
                      child: Container(
                        child: FaIcon(
                          FontAwesomeIcons.lightbulb,
                          color: Colors.white,
                          size: 23,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, "/darkpage");
                    },
                    child: Container(
                      child: Column(
                        children: [
                          Container(
                            height: 160,
                            width: 400,
                            child: Center(
                              child: Text(
                                "Dark",
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.white),
                              ),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/dark/dark (21).jpg'),
                                  fit: BoxFit.cover),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, "/lightpage");
                    },
                    child: Container(
                      child: Column(
                        children: [
                          Container(
                            height: 160,
                            width: 400,
                            child: Center(
                              child: Text(
                                "Light",
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.black),
                              ),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/light/light (21).jpg'),
                                  fit: BoxFit.cover),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        )));
  }
}