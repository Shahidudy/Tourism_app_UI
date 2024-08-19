import 'package:flutter/material.dart';
import 'package:international_tourism/colors/colorss.dart';
import 'package:international_tourism/pages/chat_page.dart';
import 'package:international_tourism/pages/home_page.dart';
import 'package:international_tourism/pages/info_page.dart';

class NavPage extends StatefulWidget {
  const NavPage({super.key});

  @override
  State<NavPage> createState() => _NavPageState();
}

class _NavPageState extends State<NavPage> {
  int myIndex = 0;
  void tapFun(int index) {
    setState(() {
      myIndex = index;
    });
  }

  List allPages = [
    HomePage(),
    InfoPage(),
    ChatPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: allPages[myIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 85, 163, 87),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        height: 40,
        // color: Colors.amber,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            botIcons(botmIcon: Icons.home, index: 0),
            botIcons(botmIcon: Icons.info, index: 1),
            botIcons(botmIcon: Icons.chat, index: 2),
          ],
        ),
      ),
    );
  }

  Widget botIcons({required IconData botmIcon, required int index}) {
    return GestureDetector(
      onTap: () {
        tapFun(index);
      },
      child: Icon(
        botmIcon,
        size: 30,
        color: myIndex == index
            ? myBlack
            : const Color.fromARGB(255, 102, 101, 101),
      ),
    );
  }
}
