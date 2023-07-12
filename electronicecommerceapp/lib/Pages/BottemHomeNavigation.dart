
import 'package:electronicecommerceapp/Pages/HomePage.dart';
import 'package:electronicecommerceapp/Pages/Ps5_products.dart';
import 'package:flutter/material.dart';

class BottomHome extends StatefulWidget {
  const BottomHome({super.key});

  @override
  State<BottomHome> createState() => _BottomHomeState();
}

class _BottomHomeState extends State<BottomHome> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    //TabController _tabController = TabController(length: 5, vsync: this);
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: Color(0xFF333742),
        appBar: AppBar(
          bottom: const TabBar(
            indicatorColor: Colors.transparent,
            tabs: <Widget>[
              Tab(
                text: "All",
              ),
              Tab(
                text: "PS5",
              ),
              Tab(
                text: "PS4",
              ),
              Tab(
                text: "Xbox one",
              ),
              Tab(
                text: "Xbox oneX",
              )
            ],
          ),
          actions: [
            IconButton(
                onPressed: () {}, icon: Icon(Icons.notification_add_outlined))
          ],
          backgroundColor: Color(0xFF333742),
          leading: Image.asset(
            "assets/menu.png",
            height: 12,
            width: 11,
            color: Colors.white,
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            HomePage(),
            PS5Products(),
            HomePage(),
            HomePage(),
            HomePage()
          ],
        ),
      ),
    );
  }
}
