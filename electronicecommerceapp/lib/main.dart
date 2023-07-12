import 'package:flutter/material.dart';

import 'Pages/BottemHomeNavigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          appBarTheme: AppBarTheme(
        backgroundColor: Color(0xFF333742),
        elevation: 0,
      )),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: BottomHome(),
    );
  }
}
