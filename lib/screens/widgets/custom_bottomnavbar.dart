import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:machinetest4/colors.dart';
import 'package:machinetest4/screens/logic/bottomnav_button_logic.dart';
import 'package:provider/provider.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedButtonProvider = Provider.of<SelectedButtonProvider>(context);
    return Container(
        height: 100,
        width: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomRight,
                end: Alignment.bottomLeft,
                colors: [
              Color.fromARGB(255, 2, 18, 31),
              Color.fromARGB(255, 40, 59, 85),
              Color.fromARGB(255, 2, 21, 36)
            ])),
        child: Padding(
            padding: const EdgeInsets.all(23.0),
            child: Container(
              height: 20,
              width: double.infinity,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                  color: Color.fromARGB(255, 43, 42, 42)),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      onPressed: () {
                        selectedButtonProvider.updateSelectedIndex(0);
                      },
                      icon: Icon(IconlyBold.home,
                          color: selectedButtonProvider.selectedIndex == 0
                              ? primaryColor // Primary Color
                              : secondaryColor // Secondary Color
                          ),
                    ),
                    IconButton(
                      onPressed: () {
                        selectedButtonProvider.updateSelectedIndex(1);
                      },
                      icon: Icon(Icons.people,
                          color: selectedButtonProvider.selectedIndex == 1
                              ? primaryColor
                              : secondaryColor),
                    ),
                    IconButton(
                      onPressed: () {
                        selectedButtonProvider.updateSelectedIndex(2);
                      },
                      icon: Icon(Icons.book_online,
                          color: selectedButtonProvider.selectedIndex == 2
                              ? primaryColor
                              : secondaryColor),
                    ),
                    const CircleAvatar(
                      radius: 14,
                      backgroundImage: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRr0bSwA5qUB7ukMdtoDuzaE6JjyweyxbXiaA&usqp=CAU'),
                    ),
                  ]),
            )));
  }
}
