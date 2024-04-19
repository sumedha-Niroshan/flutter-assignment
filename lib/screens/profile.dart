import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart' as http;

import '../widgets/list_tile.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.35,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.05,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.2,
                      child: const Padding(
                        padding: EdgeInsets.only(
                            top: 20.0), // Adjust the top padding here
                        child: CircleAvatar(
                          radius: 48,
                          backgroundImage: AssetImage("assets/profile.png"),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.03,
                    ),
                    SizedBox(
                      // width: MediaQuery.of(context).size.width * 0.6,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 25.0), // Adjust the top padding here
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Sahan Perera",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              "Piliyandala, Srl lanka",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.01,
                            ),
                            const Row(
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      "0",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 26,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "Likes",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: 28,
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "0",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 26,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "Matches",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: 26,
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "8",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 26,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "Viewed",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    )
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.01,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.4,
                              child: Container(
                                alignment: Alignment.center,
                                decoration: const ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(30.0))),
                                  color: Color.fromARGB(249, 248, 216, 57),
                                ),
                                child: TextButton(
                                  onPressed: () {},
                                  style: ButtonStyle(
                                    foregroundColor:
                                        MaterialStateProperty.all(Colors.white),
                                  ),
                                  child: const Text("Boost Profile",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    // SizedBox(
                    //   width: MediaQuery.of(context).size.width * 0.15,
                    // ),
                    const SizedBox(
                      child: Padding(
                        padding: EdgeInsets.only(
                            top: 25.0), // Adjust the top padding here
                        child: Icon(FontAwesomeIcons.penToSquare,
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              ListTileSection(
                icon: const Icon(
                  FontAwesomeIcons.penToSquare,
                  color: Colors.black,
                  size: 32,
                ),
                onPressed: () {},
                text: "Edit Profile",
              ),
              ListTileSection(
                icon: const Icon(
                  FontAwesomeIcons.key,
                  color: Color.fromARGB(255, 31, 31, 31),
                  size: 32,
                ),
                onPressed: () {},
                text: "Change Password",
              ),
              ListTileSection(
                icon: const Icon(
                  Icons.add_photo_alternate,
                  color: Color.fromARGB(255, 31, 31, 31),
                  size: 36,
                ),
                onPressed: () {},
                text: "Top Picks",
              ),
              ListTileSection(
                icon: const Icon(
                  Icons.people,
                  color: Color.fromARGB(255, 31, 31, 31),
                  size: 36,
                ),
                onPressed: () {},
                text: "Matches",
              ),
              ListTileSection(
                icon: const Icon(
                  FontAwesomeIcons.heart,
                  color: Color.fromARGB(255, 31, 31, 31),
                  size: 36,
                ),
                onPressed: () {},
                text: "Who Likes You",
              ),
              ListTileSection(
                icon: const Icon(
                  Icons.favorite_rounded,
                  color: Color.fromARGB(255, 31, 31, 31),
                  size: 36,
                ),
                onPressed: () {},
                text: "You Likes",
              )
            ],
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.copy,
              color: Colors.grey,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.compass,
              color: Colors.grey,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.star_outline,
              color: Colors.grey,
              size: 32,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.chat,
              color: Colors.grey,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.user,
              color: Colors.grey,
            ),
            label: "",
          )
        ],
      ),
    );
  }
}
