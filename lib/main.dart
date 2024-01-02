import 'package:flutter/material.dart';
import 'package:machinetest4/screens/homescreen.dart';
import 'package:machinetest4/screens/logic/bottomnav_button_logic.dart';
import 'package:machinetest4/screens/logic/tabbar_button_logic.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ButtonSelectionModel()),
        ChangeNotifierProvider(create: (context) => SelectedButtonProvider())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Ticket App',
        theme: ThemeData(),
        home: const HomeScreen(),
      ),
    );
  }
}
