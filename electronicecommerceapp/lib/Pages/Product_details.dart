import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF333742),
      appBar: AppBar(
          title: Text("Playstation 5"),
          actions: [
            IconButton(
                onPressed: () {}, icon: Icon(Icons.favorite_outline_sharp))
          ],
          backgroundColor: Color(0xFF333742),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context);
            },
          )),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              margin: EdgeInsets.only(left: 22, top: 55),
              child: Text(
                "Playstation 5",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 33),
              )),
          Container(
              margin: EdgeInsets.only(left: 22, top: 11),
              child: Text(
                "Sony",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w100,
                    fontSize: 20),
              )),
          Iconswidget(),
          Center(
            child: Container(
              child: Image.asset(
                "assets/playstation.png",
                width: 200,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Iconswidget extends StatelessWidget {
  const Iconswidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 55),
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 22),
                child: Icon(Icons.remove_red_eye),
              ),
              Text("1.5K"),
              Container(
                  margin: EdgeInsets.only(left: 22),
                  child: Icon(
                    Icons.favorite,
                  )),
              Container(margin: EdgeInsets.only(left: 8), child: Text("212")),
              Container(
                  margin: EdgeInsets.only(left: 22),
                  child: Icon(Icons.shopping_bag)),
              Container(child: Text("120"), margin: EdgeInsets.only(left: 8))
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 11),
          child: Column(
            children: [
              Container(
                  margin: const EdgeInsets.only(left: 88, top: 4),
                  height: 27,
                  width: 27,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      color: Color.fromARGB(255, 41, 44, 51),
                      borderRadius: BorderRadius.circular(10))),
              Container(
                  margin: const EdgeInsets.only(left: 88, top: 4),
                  height: 27,
                  width: 27,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10))),
              Container(
                  margin: const EdgeInsets.only(left: 88, top: 4),
                  height: 27,
                  width: 27,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10)))
            ],
          ),
        )
      ],
    );
  }
}
