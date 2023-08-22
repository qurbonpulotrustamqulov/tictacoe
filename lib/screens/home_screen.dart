import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tictacoe/screens/single_player_screen.dart';

import 'gaming_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final x = MediaQuery.of(context).size.width;
    final y = MediaQuery.of(context).size.height;

    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 21, 21, 48),
        elevation: 0,
        leadingWidth: 80,
        centerTitle: true,
        title: const Text(
          "Tic Tac Toe",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w400,
            fontFamily: "GeostarFill",
            color: Colors.white
          ),
        ),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: const Icon(
                Icons.settings,
                size: 30,
                color: Color.fromARGB(255, 234, 100, 4),
              ),
            );
          },
        ),
      ),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/back.jpg"),
                  fit: BoxFit.cover)),
          height: y,
          width: x,
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 0, sigmaY: 0),
            child: Container(
              decoration: BoxDecoration(color: Colors.white.withOpacity(0.03)),
              child: SafeArea(
                minimum: EdgeInsets.only(
                  left: x * 0.02,
                  right: x * 0.02,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Spacer(flex: 6),
                    Align(
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () {},
                            style: IconButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100),
                              ),
                              padding: EdgeInsets.zero,
                            ),
                            icon: const Icon(
                              Icons.arrow_back_ios_new,
                              size: 35,
                              color: Colors.white,
                            ),
                          ),
                          Container(
                            width: x * 0.65,
                            height: x * 0.65,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                width: 7,
                                color: Colors.black,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8),
                              child: Image.asset(
                                "assets/images/tictac.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100),
                              ),
                            ),
                            icon: const Icon(
                              Icons.arrow_forward_ios,
                              size: 35,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(flex: 4),
                    Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          gradient: const LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [
                                Color.fromARGB(255, 46, 8, 172),
                                Color.fromARGB(255, 62, 26, 225),
                                Color.fromARGB(255, 81, 67, 241),
                                Color.fromARGB(255, 138, 115, 253)
                              ])),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) =>
                                      const SingleScreen())));
                        },
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18)),
                          fixedSize: Size(x * 0.65, x * 0.16),
                        ),
                        child: const Text(
                          "Single-Player",
                          style: TextStyle(
                              fontSize: 24,
                              letterSpacing: 0.8,
                              fontWeight: FontWeight.w500,
                              fontFamily: "AudioWide",
                              color: Colors.white),
                        ),
                      ),
                    ),
                    const Spacer(flex: 1),
                    Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: const LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [
                                Color.fromARGB(255, 5, 119, 9),
                                Color.fromARGB(255, 60, 157, 15),
                                Color.fromARGB(255, 29, 225, 39),
                              ])),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) =>
                                      const GamingScreen())));
                        },
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          fixedSize: Size(x * 0.65, x * 0.16),
                        ),
                        child: const Text(
                          "Multi-Player",
                          style: TextStyle(
                            letterSpacing: 0.8,
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                              fontFamily: "AudioWide",
                              color: Colors.white),
                        ),
                      ),
                    ),
                    const Spacer(flex: 2),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
