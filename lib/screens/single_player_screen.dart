import 'package:flutter/material.dart';

import 'home_screen.dart';

class SingleScreen extends StatefulWidget {
  const SingleScreen({Key? key}) : super(key: key);

  @override
  State<SingleScreen> createState() => _SingleScreenState();
}

class _SingleScreenState extends State<SingleScreen> {
  IconData iconX = Icons.close;
  IconData iconO = Icons.circle_outlined;
  int counter = 0;
  int winner = -1;
  IconData? icon1;
  IconData? icon2;
  IconData? icon3;
  IconData? icon4;
  IconData? icon5;
  IconData? icon6;
  IconData? icon7;
  IconData? icon8;
  IconData? icon9;

  bool isPressed1 = true;
  bool isPressed2 = true;
  bool isPressed3 = true;
  bool isPressed4 = true;
  bool isPressed5 = true;
  bool isPressed6 = true;
  bool isPressed7 = true;
  bool isPressed8 = true;
  bool isPressed9 = true;

  void winnerChecker() {
    if ((icon1 == icon2 && icon2 == icon3 && icon1 != null) ||
        (icon4 == icon5 && icon5 == icon6 && icon4 != null) ||
        (icon7 == icon8 && icon8 == icon9 && icon7 != null) ||
        (icon1 == icon4 && icon4 == icon7 && icon1 != null) ||
        (icon2 == icon5 && icon5 == icon8 && icon2 != null) ||
        (icon3 == icon6 && icon6 == icon9 && icon3 != null) ||
        (icon1 == icon5 && icon5 == icon9 && icon1 != null) ||
        (icon3 == icon5 && icon5 == icon7 && icon3 != null)) {
      if (icon1 == icon2 && icon2 == icon3) {
        debugPrint(icon1 == iconX ? "X win" : "O win");
        icon1 == iconX ? winner = 1 : winner = 0;
      }
      else if (icon4 == icon5 && icon5 == icon6) {
        debugPrint(icon4 == iconX ? "X win" : "O win");
        icon4 == iconX ? winner = 1 : winner = 0;
      }
      else  if (icon7 == icon8 && icon8 == icon9) {
        debugPrint(icon7 == iconX ? "X win" : "O win");
        icon7 == iconX ? winner = 1 : winner = 0;
      }
      else if (icon1 == icon4 && icon4 == icon7) {
        debugPrint(icon1 == iconX ? "X win" : "O win");
        icon1 == iconX ? winner = 1 : winner = 0;
      }
      else if (icon2 == icon5 && icon5 == icon8) {
        debugPrint(icon2 == iconX ? "X win" : "O win");
        icon2 == iconX ? winner = 1 : winner = 0;
      }
      if (icon3 == icon6 && icon6 == icon9) {
        debugPrint(icon3 == iconX ? "X win" : "O win");
        icon3 == iconX ? winner = 1 : winner = 0;
      }
      else if (icon1 == icon5 && icon5 == icon9) {
        debugPrint(icon1 == iconX ? "X win" : "O win");
        icon1 == iconX ? winner = 1 : winner = 0;
      }
      else  if (icon3 == icon5 && icon5 == icon7) {
        debugPrint(icon3 == iconX ? "X win" : "O win");
        icon3 == iconX ? winner = 1 : winner = 0;
      }
      if (winner == 1) {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text(
                "X win",
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w400,
                    fontFamily: "GeostarFill",
                    color: Colors.blue),
              ),
              content: const Text(
                "O'yin yakunlandi",
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w400,
                    fontFamily: "GeostarFill",
                    color: Colors.red),
              ),
              actions: [
                IconButton(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomeScreen(),
                          ),
                          (route) => false);
                    },
                    icon: const Icon(
                      Icons.close,
                      size: 28,
                    ))
              ],
            );
          },
        );
      }
     else if (winner == 0) {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text(
                "O win",
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w400,
                    fontFamily: "GeostarFill",
                    color: Colors.blue),
              ),
              content: const Text(
                "O'yin yakunlandi",
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w400,
                    fontFamily: "GeostarFill",
                    color: Colors.red),
              ),
              actions: [
                IconButton(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomeScreen(),
                          ),
                              (route) => false);
                    },
                    icon: const Icon(
                      Icons.close,
                      size: 28,
                    ))
              ],
            );
          },
        );
      }
      else if(winner == -1) {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text(
                "No win",
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w400,
                    fontFamily: "GeostarFill",
                    color: Colors.blue),
              ),
              content: const Text(
                "O'yin yakunlandi",
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w400,
                    fontFamily: "GeostarFill",
                    color: Colors.red),
              ),
              actions: [
                IconButton(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomeScreen(),
                          ),
                              (route) => false);
                    },
                    icon: const Icon(
                      Icons.close,
                      size: 28,
                    ))
              ],
            );
          },
        );
      }
    }
    else if(counter == 10){
      {
        print(counter);
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text(
                "No win",
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w400,
                    fontFamily: "GeostarFill",
                    color: Colors.blue),
              ),
              content: const Text(
                "O'yin yakunlandi",
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w400,
                    fontFamily: "GeostarFill",
                    color: Colors.red),
              ),
              actions: [
                IconButton(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomeScreen(),
                          ),
                              (route) => false);
                    },
                    icon: const Icon(
                      Icons.close,
                      size: 28,
                    ))
              ],
            );
          },
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final x = MediaQuery.of(context).size.width;
    final y = MediaQuery.of(context).size.height;

    return Scaffold(
      endDrawer: const Drawer(),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 15, 0, 121),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.maybePop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
            size: 30,
            color: Color.fromARGB(255, 211, 110, 37),
          ),
        ),
        title: const Text(
          "Tic Tac Toe",
          style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w400,
              fontFamily: "GeostarFill",
              color: Colors.white),
        ),
        actions: [
          Builder(
            builder: (BuildContext context) {
              return IconButton(
                onPressed: () {
                  Scaffold.of(context).openEndDrawer();
                },
                icon: const Icon(
                  Icons.settings,
                  size: 30,
                  color: Color.fromARGB(255, 235, 119, 35),
                ),
              );
            },
          ),
        ],
      ),
      body: Container(
        height: y,
        width: x,
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/gaming_back.jpg"))),
        child: SafeArea(
          minimum: EdgeInsets.only(left: x * 0.13, right: x * 0.13),
          child: Center(
            child: Container(
              width: x * 0.75,
              height: x * 0.75,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: isPressed1
                            ? () {
                          counter += 2;
                                icon1 = iconX;
                                isPressed1 = false;
                                if (icon1 == iconX &&
                                    icon2 == iconX &&
                                    icon3 == null) {
                                  icon3 = iconO;
                                  isPressed3 = false;
                                } else if (icon1 == iconX &&
                                    icon4 == iconX &&
                                    icon7 == null) {
                                  icon7 = iconO;
                                  isPressed7 = false;
                                } else if (icon1 == iconX &&
                                    icon5 == iconX &&
                                    icon9 == null) {
                                  icon9 = iconO;
                                  isPressed9 = false;
                                } else if (icon5 == iconX &&
                                    icon1 == iconX &&
                                    icon9 == null) {
                                  icon9 = iconO;
                                  isPressed9 = false;
                                } else if (icon5 == iconX &&
                                    icon2 == iconX &&
                                    icon8 == null) {
                                  icon8 = iconO;
                                  isPressed8 = false;
                                } else if (icon5 == iconX &&
                                    icon3 == iconX &&
                                    icon7 == null) {
                                  icon7 = iconO;
                                  isPressed7 = false;
                                } else if (icon5 == iconX &&
                                    icon4 == iconX &&
                                    icon6 == null) {
                                  icon6 = iconO;
                                  isPressed6 = false;
                                } else if (icon5 == iconX &&
                                    icon6 == iconX &&
                                    icon4 == null) {
                                  icon4 = iconO;
                                  isPressed4 = false;
                                } else if (icon5 == iconX &&
                                    icon7 == iconX &&
                                    icon3 == null) {
                                  icon3 = iconO;
                                  isPressed3 = false;
                                } else if (icon5 == iconX &&
                                    icon8 == iconX &&
                                    icon2 == null) {
                                  icon2 = iconO;
                                  isPressed2 = false;
                                } else if (icon5 == iconX &&
                                    icon9 == iconX &&
                                    icon1 == null) {
                                  icon1 = iconO;
                                  isPressed1 = false;
                                } else if (icon1 == null) {
                                  icon1 = iconO;
                                  isPressed1 = false;
                                } else if (icon5 == null) {
                                  icon5 = iconO;
                                  isPressed5 = false;
                                } else if (icon2 == null) {
                                  icon2 = iconO;
                                  isPressed2 = false;
                                } else if (icon4 == null) {
                                  icon4 = iconO;
                                  isPressed4 = false;
                                } else if (icon9 == null) {
                                  icon9 = iconO;
                                  isPressed9 = false;
                                } else if (icon3 == null) {
                                  icon3 = iconO;
                                  isPressed3 = false;
                                } else if (icon7 == null) {
                                  icon7 = iconO;
                                  isPressed7 = false;
                                } else if (icon6 == null) {
                                  icon6 = iconO;
                                  isPressed6 = false;
                                } else if (icon8 == null) {
                                  icon8 = iconO;
                                  isPressed8 = false;
                                }
                                winnerChecker();
                                setState(() {});
                              }
                            : () {},
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(x * 0.2, x * 0.2),
                          backgroundColor: Colors.white,
                          side: const BorderSide(
                            width: 1,
                            color: Colors.black,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: Icon(
                          icon1,
                          size: 50,
                          color: Colors.black,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: isPressed2
                            ? () {
                          counter += 2;
                                icon2 = iconX;
                                isPressed2 = false;
                                if (icon1 == iconX &&
                                    icon2 == iconX &&
                                    icon3 == null) {
                                  icon3 = iconO;
                                  isPressed3 = false;
                                } else if (icon1 == iconX &&
                                    icon4 == iconX &&
                                    icon7 == null) {
                                  icon7 = iconO;
                                  isPressed7 = false;
                                } else if (icon1 == iconX &&
                                    icon5 == iconX &&
                                    icon9 == null) {
                                  icon9 = iconO;
                                  isPressed9 = false;
                                } else if (icon5 == iconX &&
                                    icon1 == iconX &&
                                    icon9 == null) {
                                  icon9 = iconO;
                                  isPressed9 = false;
                                } else if (icon5 == iconX &&
                                    icon2 == iconX &&
                                    icon8 == null) {
                                  icon8 = iconO;
                                  isPressed8 = false;
                                } else if (icon5 == iconX &&
                                    icon3 == iconX &&
                                    icon7 == null) {
                                  icon7 = iconO;
                                  isPressed7 = false;
                                } else if (icon5 == iconX &&
                                    icon4 == iconX &&
                                    icon6 == null) {
                                  icon6 = iconO;
                                  isPressed6 = false;
                                } else if (icon5 == iconX &&
                                    icon6 == iconX &&
                                    icon4 == null) {
                                  icon4 = iconO;
                                  isPressed4 = false;
                                } else if (icon5 == iconX &&
                                    icon7 == iconX &&
                                    icon3 == null) {
                                  icon3 = iconO;
                                  isPressed3 = false;
                                } else if (icon5 == iconX &&
                                    icon8 == iconX &&
                                    icon2 == null) {
                                  icon2 = iconO;
                                  isPressed2 = false;
                                } else if (icon5 == iconX &&
                                    icon9 == iconX &&
                                    icon1 == null) {
                                  icon1 = iconO;
                                  isPressed1 = false;
                                } else if (icon1 == null) {
                                  icon1 = iconO;
                                  isPressed1 = false;
                                } else if (icon5 == null) {
                                  icon5 = iconO;
                                  isPressed5 = false;
                                } else if (icon3 == null) {
                                  icon3 = iconO;
                                  isPressed3 = false;
                                } else if (icon8 == null) {
                                  icon8 = iconO;
                                  isPressed8 = false;
                                } else if (icon4 == null) {
                                  icon4 = iconO;
                                  isPressed4 = false;
                                } else if (icon6 == null) {
                                  icon6 = iconO;
                                  isPressed6 = false;
                                } else if (icon7 == null) {
                                  icon7 = iconO;
                                  isPressed7 = false;
                                } else if (icon9 == null) {
                                  icon9 = iconO;
                                  isPressed9 = false;
                                } else if (icon2 == null) {
                                  icon2 = iconO;
                                  isPressed2 = false;
                                }
                                winnerChecker();
                                setState(() {});
                              }
                            : () {},
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(x * 0.2, x * 0.2),
                          backgroundColor: Colors.white,
                          side: const BorderSide(
                            width: 1,
                            color: Colors.black,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: Icon(
                          icon2,
                          size: 50,
                          color: Colors.black,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: isPressed3
                            ? () {
                          counter += 2;
                                icon3 = iconX;
                                if (icon1 == iconX &&
                                    icon2 == iconX &&
                                    icon3 == null) {
                                  icon3 = iconO;
                                  isPressed3 = false;
                                } else if (icon1 == iconX &&
                                    icon4 == iconX &&
                                    icon7 == null) {
                                  icon7 = iconO;
                                  isPressed7 = false;
                                } else if (icon1 == iconX &&
                                    icon5 == iconX &&
                                    icon9 == null) {
                                  icon9 = iconO;
                                  isPressed9 = false;
                                } else if (icon5 == iconX &&
                                    icon1 == iconX &&
                                    icon9 == null) {
                                  icon9 = iconO;
                                  isPressed9 = false;
                                } else if (icon5 == iconX &&
                                    icon2 == iconX &&
                                    icon8 == null) {
                                  icon8 = iconO;
                                  isPressed8 = false;
                                } else if (icon5 == iconX &&
                                    icon3 == iconX &&
                                    icon7 == null) {
                                  icon7 = iconO;
                                  isPressed7 = false;
                                } else if (icon5 == iconX &&
                                    icon4 == iconX &&
                                    icon6 == null) {
                                  icon6 = iconO;
                                  isPressed6 = false;
                                } else if (icon5 == iconX &&
                                    icon6 == iconX &&
                                    icon4 == null) {
                                  icon4 = iconO;
                                  isPressed4 = false;
                                } else if (icon5 == iconX &&
                                    icon7 == iconX &&
                                    icon3 == null) {
                                  icon3 = iconO;
                                  isPressed3 = false;
                                } else if (icon5 == iconX &&
                                    icon8 == iconX &&
                                    icon2 == null) {
                                  icon2 = iconO;
                                  isPressed2 = false;
                                } else if (icon5 == iconX &&
                                    icon9 == iconX &&
                                    icon1 == null) {
                                  icon1 = iconO;
                                  isPressed1 = false;
                                } else if (icon5 == null) {
                                  icon5 = iconO;
                                  isPressed5 = false;
                                } else if (icon2 == null) {
                                  icon2 = iconO;
                                  isPressed2 = false;
                                } else if (icon6 == null) {
                                  icon6 = iconO;
                                  isPressed6 = false;
                                } else if (icon7 == null) {
                                  icon7 = iconO;
                                  isPressed7 = false;
                                } else if (icon1 == null) {
                                  icon1 = iconO;
                                  isPressed1 = false;
                                } else if (icon9 == null) {
                                  icon9 = iconO;
                                  isPressed9 = false;
                                } else if (icon8 == null) {
                                  icon8 = iconO;
                                  isPressed8 = false;
                                } else if (icon4 == null) {
                                  icon4 = iconO;
                                  isPressed4 = false;
                                } else if (icon3 == null) {
                                  icon3 = iconO;
                                  isPressed3 = false;
                                }
                                isPressed3 = false;
                                winnerChecker();
                                setState(() {});
                              }
                            : () {},
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(x * 0.2, x * 0.2),
                          backgroundColor: Colors.white,
                          side: const BorderSide(
                            width: 1,
                            color: Colors.black,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: Icon(
                          icon3,
                          size: 50,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: isPressed4
                            ? () {
                          counter += 2;
                                icon4 = iconX;
                                isPressed4 = false;
                                if (icon1 == iconX &&
                                    icon2 == iconX &&
                                    icon3 == null) {
                                  icon3 = iconO;
                                  isPressed3 = false;
                                } else if (icon1 == iconX &&
                                    icon4 == iconX &&
                                    icon7 == null) {
                                  icon7 = iconO;
                                  isPressed7 = false;
                                } else if (icon1 == iconX &&
                                    icon5 == iconX &&
                                    icon9 == null) {
                                  icon9 = iconO;
                                  isPressed9 = false;
                                } else if (icon5 == iconX &&
                                    icon1 == iconX &&
                                    icon9 == null) {
                                  icon9 = iconO;
                                  isPressed9 = false;
                                } else if (icon5 == iconX &&
                                    icon2 == iconX &&
                                    icon8 == null) {
                                  icon8 = iconO;
                                  isPressed8 = false;
                                } else if (icon5 == iconX &&
                                    icon3 == iconX &&
                                    icon7 == null) {
                                  icon7 = iconO;
                                  isPressed7 = false;
                                } else if (icon5 == iconX &&
                                    icon4 == iconX &&
                                    icon6 == null) {
                                  icon6 = iconO;
                                  isPressed6 = false;
                                } else if (icon5 == iconX &&
                                    icon6 == iconX &&
                                    icon4 == null) {
                                  icon4 = iconO;
                                  isPressed4 = false;
                                } else if (icon5 == iconX &&
                                    icon7 == iconX &&
                                    icon3 == null) {
                                  icon3 = iconO;
                                  isPressed3 = false;
                                } else if (icon5 == iconX &&
                                    icon8 == iconX &&
                                    icon2 == null) {
                                  icon2 = iconO;
                                  isPressed2 = false;
                                } else if (icon5 == iconX &&
                                    icon9 == iconX &&
                                    icon1 == null) {
                                  icon1 = iconO;
                                  isPressed1 = false;
                                } else if (icon1 == null) {
                                  icon1 = iconO;
                                  isPressed1 = false;
                                } else if (icon5 == null) {
                                  icon5 = iconO;
                                  isPressed5 = false;
                                } else if (icon7 == null) {
                                  icon7 = iconO;
                                  isPressed7 = false;
                                } else if (icon4 == null) {
                                  icon4 = iconO;
                                  isPressed4 = false;
                                } else if (icon6 == null) {
                                  icon6 = iconO;
                                  isPressed6 = false;
                                } else if (icon3 == null) {
                                  icon3 = iconO;
                                  isPressed3 = false;
                                } else if (icon2 == null) {
                                  icon2 = iconO;
                                  isPressed2 = false;
                                } else if (icon9 == null) {
                                  icon9 = iconO;
                                  isPressed9 = false;
                                } else if (icon8 == null) {
                                  icon8 = iconO;
                                  isPressed8 = false;
                                }
                                winnerChecker();
                                setState(() {});
                              }
                            : () {},
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(x * 0.2, x * 0.2),
                          backgroundColor: Colors.white,
                          side: const BorderSide(
                            width: 1,
                            color: Colors.black,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: Icon(
                          icon4,
                          size: 50,
                          color: Colors.black,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: isPressed5
                            ? () {
                          counter += 2;
                                icon5 = iconX;
                                isPressed5 = false;
                                if (icon1 == iconX &&
                                    icon2 == iconX &&
                                    icon3 == null) {
                                  icon3 = iconO;
                                  isPressed3 = false;
                                } else if (icon1 == iconX &&
                                    icon4 == iconX &&
                                    icon7 == null) {
                                  icon7 = iconO;
                                  isPressed7 = false;
                                } else if (icon1 == iconX &&
                                    icon5 == iconX &&
                                    icon9 == null) {
                                  icon9 = iconO;
                                  isPressed9 = false;
                                } else if (icon5 == iconX &&
                                    icon1 == iconX &&
                                    icon9 == null) {
                                  icon9 = iconO;
                                  isPressed9 = false;
                                } else if (icon5 == iconX &&
                                    icon2 == iconX &&
                                    icon8 == null) {
                                  icon8 = iconO;
                                  isPressed8 = false;
                                } else if (icon5 == iconX &&
                                    icon3 == iconX &&
                                    icon7 == null) {
                                  icon7 = iconO;
                                  isPressed7 = false;
                                } else if (icon5 == iconX &&
                                    icon4 == iconX &&
                                    icon6 == null) {
                                  icon6 = iconO;
                                  isPressed6 = false;
                                } else if (icon5 == iconX &&
                                    icon6 == iconX &&
                                    icon4 == null) {
                                  icon4 = iconO;
                                  isPressed4 = false;
                                } else if (icon5 == iconX &&
                                    icon7 == iconX &&
                                    icon3 == null) {
                                  icon3 = iconO;
                                  isPressed3 = false;
                                } else if (icon5 == iconX &&
                                    icon8 == iconX &&
                                    icon2 == null) {
                                  icon2 = iconO;
                                  isPressed2 = false;
                                } else if (icon5 == iconX &&
                                    icon9 == iconX &&
                                    icon1 == null) {
                                  icon1 = iconO;
                                  isPressed1 = false;
                                } else if (icon1 == null) {
                                  icon1 = iconO;
                                  isPressed1 = false;
                                } else if (icon5 == null) {
                                  icon5 = iconO;
                                  isPressed5 = false;
                                } else if (icon2 == null) {
                                  icon9 = iconO;
                                  isPressed9 = false;
                                } else if (icon3 == null) {
                                  icon3 = iconO;
                                  isPressed3 = false;
                                } else if (icon7 == null) {
                                  icon7 = iconO;
                                  isPressed7 = false;
                                } else if (icon2 == null) {
                                  icon2 = iconO;
                                  isPressed2 = false;
                                } else if (icon8 == null) {
                                  icon8 = iconO;
                                  isPressed8 = false;
                                } else if (icon4 == null) {
                                  icon4 = iconO;
                                  isPressed4 = false;
                                } else if (icon6 == null) {
                                  icon6 = iconO;
                                  isPressed6 = false;
                                }
                                winnerChecker();
                                setState(() {});
                              }
                            : () {},
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(x * 0.2, x * 0.2),
                          backgroundColor: Colors.white,
                          side: const BorderSide(
                            width: 1,
                            color: Colors.black,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: Icon(
                          icon5,
                          size: 50,
                          color: Colors.black,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: isPressed6
                            ? () {
                          counter +=2;
                                icon6 = iconX;
                                isPressed6 = false;
                                if (icon1 == iconX &&
                                    icon2 == iconX &&
                                    icon3 == null) {
                                  icon3 = iconO;
                                  isPressed3 = false;
                                } else if (icon1 == iconX &&
                                    icon4 == iconX &&
                                    icon7 == null) {
                                  icon7 = iconO;
                                  isPressed7 = false;
                                } else if (icon1 == iconX &&
                                    icon5 == iconX &&
                                    icon9 == null) {
                                  icon9 = iconO;
                                  isPressed9 = false;
                                } else if (icon5 == iconX &&
                                    icon1 == iconX &&
                                    icon9 == null) {
                                  icon9 = iconO;
                                  isPressed9 = false;
                                } else if (icon5 == iconX &&
                                    icon2 == iconX &&
                                    icon8 == null) {
                                  icon8 = iconO;
                                  isPressed8 = false;
                                } else if (icon5 == iconX &&
                                    icon3 == iconX &&
                                    icon7 == null) {
                                  icon7 = iconO;
                                  isPressed7 = false;
                                } else if (icon5 == iconX &&
                                    icon4 == iconX &&
                                    icon6 == null) {
                                  icon6 = iconO;
                                  isPressed6 = false;
                                } else if (icon5 == iconX &&
                                    icon6 == iconX &&
                                    icon4 == null) {
                                  icon4 = iconO;
                                  isPressed4 = false;
                                } else if (icon5 == iconX &&
                                    icon7 == iconX &&
                                    icon3 == null) {
                                  icon3 = iconO;
                                  isPressed3 = false;
                                } else if (icon5 == iconX &&
                                    icon8 == iconX &&
                                    icon2 == null) {
                                  icon2 = iconO;
                                  isPressed2 = false;
                                } else if (icon5 == iconX &&
                                    icon9 == iconX &&
                                    icon1 == null) {
                                  icon1 = iconO;
                                  isPressed1 = false;
                                } else if (icon3 == null) {
                                  icon3 = iconO;
                                  isPressed3 = false;
                                } else if (icon5 == null) {
                                  icon5 = iconO;
                                  isPressed5 = false;
                                } else if (icon4 == null) {
                                  icon4 = iconO;
                                  isPressed4 = false;
                                } else if (icon9 == null) {
                                  icon9 = iconO;
                                  isPressed9 = false;
                                } else if (icon2 == null) {
                                  icon2 = iconO;
                                  isPressed2 = false;
                                } else if (icon1 == null) {
                                  icon1 = iconO;
                                  isPressed1 = false;
                                } else if (icon7 == null) {
                                  icon7 = iconO;
                                  isPressed7 = false;
                                } else if (icon6 == null) {
                                  icon6 = iconO;
                                  isPressed6 = false;
                                } else if (icon8 == null) {
                                  icon8 = iconO;
                                  isPressed8 = false;
                                }
                                winnerChecker();
                                setState(() {});
                              }
                            : () {},
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(x * 0.2, x * 0.2),
                          backgroundColor: Colors.white,
                          side: const BorderSide(
                            width: 1,
                            color: Colors.black,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: Icon(
                          icon6,
                          size: 50,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: isPressed7
                            ? () {
                          counter+=2;
                                icon7 = iconX;
                                isPressed7 = false;
                                if (icon1 == iconX &&
                                    icon2 == iconX &&
                                    icon3 == null) {
                                  icon3 = iconO;
                                  isPressed3 = false;
                                } else if (icon1 == iconX &&
                                    icon4 == iconX &&
                                    icon7 == null) {
                                  icon7 = iconO;
                                  isPressed7 = false;
                                } else if (icon1 == iconX &&
                                    icon5 == iconX &&
                                    icon9 == null) {
                                  icon9 = iconO;
                                  isPressed9 = false;
                                } else if (icon5 == iconX &&
                                    icon1 == iconX &&
                                    icon9 == null) {
                                  icon9 = iconO;
                                  isPressed9 = false;
                                } else if (icon5 == iconX &&
                                    icon2 == iconX &&
                                    icon8 == null) {
                                  icon8 = iconO;
                                  isPressed8 = false;
                                } else if (icon5 == iconX &&
                                    icon3 == iconX &&
                                    icon7 == null) {
                                  icon7 = iconO;
                                  isPressed7 = false;
                                } else if (icon5 == iconX &&
                                    icon4 == iconX &&
                                    icon6 == null) {
                                  icon6 = iconO;
                                  isPressed6 = false;
                                } else if (icon5 == iconX &&
                                    icon6 == iconX &&
                                    icon4 == null) {
                                  icon4 = iconO;
                                  isPressed4 = false;
                                } else if (icon5 == iconX &&
                                    icon7 == iconX &&
                                    icon3 == null) {
                                  icon3 = iconO;
                                  isPressed3 = false;
                                } else if (icon5 == iconX &&
                                    icon8 == iconX &&
                                    icon2 == null) {
                                  icon2 = iconO;
                                  isPressed2 = false;
                                } else if (icon5 == iconX &&
                                    icon9 == iconX &&
                                    icon1 == null) {
                                  icon1 = iconO;
                                  isPressed1 = false;
                                } else if (icon5 == null) {
                                  icon5 = iconO;
                                  isPressed5 = false;
                                } else if (icon4 == null) {
                                  icon4 = iconO;
                                  isPressed4 = false;
                                } else if (icon8 == null) {
                                  icon8 = iconO;
                                  isPressed8 = false;
                                } else if (icon1 == null) {
                                  icon1 = iconO;
                                  isPressed1 = false;
                                } else if (icon3 == null) {
                                  icon3 = iconO;
                                  isPressed3 = false;
                                } else if (icon9 == null) {
                                  icon9 = iconO;
                                  isPressed9 = false;
                                } else if (icon7 == null) {
                                  icon7 = iconO;
                                  isPressed7 = false;
                                } else if (icon2 == null) {
                                  icon2 = iconO;
                                  isPressed2 = false;
                                } else if (icon6 == null) {
                                  icon6 = iconO;
                                  isPressed6 = false;
                                }
                                winnerChecker();
                                setState(() {});
                              }
                            : () {},
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(x * 0.2, x * 0.2),
                          backgroundColor: Colors.white,
                          side: const BorderSide(
                            width: 1,
                            color: Colors.black,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: Icon(
                          icon7,
                          size: 50,
                          color: Colors.black,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: isPressed8
                            ? () {
                          counter+=2;
                                icon8 = iconX;
                                isPressed8 = false;
                                if (icon1 == iconX &&
                                    icon2 == iconX &&
                                    icon3 == null) {
                                  icon3 = iconO;
                                  isPressed3 = false;
                                } else if (icon1 == iconX &&
                                    icon4 == iconX &&
                                    icon7 == null) {
                                  icon7 = iconO;
                                  isPressed7 = false;
                                } else if (icon1 == iconX &&
                                    icon5 == iconX &&
                                    icon9 == null) {
                                  icon9 = iconO;
                                  isPressed9 = false;
                                } else if (icon5 == iconX &&
                                    icon1 == iconX &&
                                    icon9 == null) {
                                  icon9 = iconO;
                                  isPressed9 = false;
                                } else if (icon5 == iconX &&
                                    icon2 == iconX &&
                                    icon8 == null) {
                                  icon8 = iconO;
                                  isPressed8 = false;
                                } else if (icon5 == iconX &&
                                    icon3 == iconX &&
                                    icon7 == null) {
                                  icon7 = iconO;
                                  isPressed7 = false;
                                } else if (icon5 == iconX &&
                                    icon4 == iconX &&
                                    icon6 == null) {
                                  icon6 = iconO;
                                  isPressed6 = false;
                                } else if (icon5 == iconX &&
                                    icon6 == iconX &&
                                    icon4 == null) {
                                  icon4 = iconO;
                                  isPressed4 = false;
                                } else if (icon5 == iconX &&
                                    icon7 == iconX &&
                                    icon3 == null) {
                                  icon3 = iconO;
                                  isPressed3 = false;
                                } else if (icon5 == iconX &&
                                    icon8 == iconX &&
                                    icon2 == null) {
                                  icon2 = iconO;
                                  isPressed2 = false;
                                } else if (icon5 == iconX &&
                                    icon9 == iconX &&
                                    icon1 == null) {
                                  icon1 = iconO;
                                  isPressed1 = false;
                                } else if (icon5 == null) {
                                  icon5 = iconO;
                                  isPressed5 = false;
                                } else if (icon7 == null) {
                                  icon7 = iconO;
                                  isPressed7 = false;
                                } else if (icon2 == null) {
                                  icon2 = iconO;
                                  isPressed2 = false;
                                } else if (icon9 == null) {
                                  icon9 = iconO;
                                  isPressed9 = false;
                                } else if (icon1 == null) {
                                  icon1 = iconO;
                                  isPressed1 = false;
                                } else if (icon3 == null) {
                                  icon3 = iconO;
                                  isPressed3 = false;
                                } else if (icon4 == null) {
                                  icon4 = iconO;
                                  isPressed4 = false;
                                } else if (icon6 == null) {
                                  icon6 = iconO;
                                  isPressed6 = false;
                                } else if (icon8 == null) {
                                  icon8 = iconO;
                                  isPressed8 = false;
                                }
                                winnerChecker();
                                setState(() {});
                              }
                            : () {},
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(x * 0.2, x * 0.2),
                          backgroundColor: Colors.white,
                          side: const BorderSide(
                            width: 1,
                            color: Colors.black,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: Icon(
                          icon8,
                          size: 50,
                          color: Colors.black,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: isPressed9
                            ? () {
                          counter+=2;
                                icon9 = iconX;
                                isPressed9 = false;
                                if (icon1 == iconX &&
                                    icon2 == iconX &&
                                    icon3 == null) {
                                  icon3 = iconO;
                                  isPressed3 = false;
                                } else if (icon1 == iconX &&
                                    icon4 == iconX &&
                                    icon7 == null) {
                                  icon7 = iconO;
                                  isPressed7 = false;
                                } else if (icon1 == iconX &&
                                    icon5 == iconX &&
                                    icon9 == null) {
                                  icon9 = iconO;
                                  isPressed9 = false;
                                } else if (icon5 == iconX &&
                                    icon1 == iconX &&
                                    icon9 == null) {
                                  icon9 = iconO;
                                  isPressed9 = false;
                                } else if (icon5 == iconX &&
                                    icon2 == iconX &&
                                    icon8 == null) {
                                  icon8 = iconO;
                                  isPressed8 = false;
                                } else if (icon5 == iconX &&
                                    icon3 == iconX &&
                                    icon7 == null) {
                                  icon7 = iconO;
                                  isPressed7 = false;
                                } else if (icon5 == iconX &&
                                    icon4 == iconX &&
                                    icon6 == null) {
                                  icon6 = iconO;
                                  isPressed6 = false;
                                } else if (icon5 == iconX &&
                                    icon6 == iconX &&
                                    icon4 == null) {
                                  icon4 = iconO;
                                  isPressed4 = false;
                                } else if (icon5 == iconX &&
                                    icon7 == iconX &&
                                    icon3 == null) {
                                  icon3 = iconO;
                                  isPressed3 = false;
                                } else if (icon5 == iconX &&
                                    icon8 == iconX &&
                                    icon2 == null) {
                                  icon2 = iconO;
                                  isPressed2 = false;
                                } else if (icon5 == iconX &&
                                    icon9 == iconX &&
                                    icon1 == null) {
                                  icon1 = iconO;
                                  isPressed1 = false;
                                } else if (icon5 == null) {
                                  icon5 = iconO;
                                  isPressed5 = false;
                                } else if (icon6 == null) {
                                  icon6 = iconO;
                                  isPressed6 = false;
                                } else if (icon8 == null) {
                                  icon8 = iconO;
                                  isPressed8 = false;
                                } else if (icon1 == null) {
                                  icon1 = iconO;
                                  isPressed1 = false;
                                } else if (icon9 == null) {
                                  icon9 = iconO;
                                  isPressed9 = false;
                                } else if (icon3 == null) {
                                  icon3 = iconO;
                                  isPressed3 = false;
                                } else if (icon7 == null) {
                                  icon7 = iconO;
                                  isPressed7 = false;
                                } else if (icon2 == null) {
                                  icon2 = iconO;
                                  isPressed2 = false;
                                } else if (icon4 == null) {
                                  icon4 = iconO;
                                  isPressed4 = false;
                                }
                                winnerChecker();
                                setState(() {});
                              }
                            : () {},
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(x * 0.2, x * 0.2),
                          backgroundColor: Colors.white,
                          side: const BorderSide(
                            width: 1,
                            color: Colors.black,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: Icon(
                          icon9,
                          size: 50,
                          color: Colors.black,
                        ),
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
