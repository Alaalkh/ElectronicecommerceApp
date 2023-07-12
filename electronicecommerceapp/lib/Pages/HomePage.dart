import 'package:electronicecommerceapp/Pages/Product_details.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 12, left: 22),
            child: const Text(
              "Categories",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const Row(
            children: [Expanded(child: searchwidget()), Filtericon()],
          ),
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ItemWidget(),
                ItemWidget(),
                ItemWidget(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class searchwidget extends StatelessWidget {
  const searchwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, top: 4),
      child: const TextField(
        decoration: InputDecoration(
          suffixIcon: Icon(Icons.search),
          hintText: "Search Products...",
          hintStyle: TextStyle(fontWeight: FontWeight.normal, fontSize: 16),
          border: InputBorder.none,
        ),
      ),
      margin: const EdgeInsets.only(left: 16, top: 15, right: 8),
      width: double.infinity,
      height: 55,
      decoration: BoxDecoration(
          color: const Color(0xFF454d5a),
          borderRadius: BorderRadius.circular(18)),
    );
  }
}

class Filtericon extends StatelessWidget {
  const Filtericon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Image.asset("assets/fliter.png"),
        margin: const EdgeInsets.only(top: 15, right: 12),
        width: 55,
        height: 55,
        decoration: BoxDecoration(
            color: const Color(0xFF454d5a),
            borderRadius: BorderRadius.circular(18)));
  }
}

class ItemWidget extends StatelessWidget {
  const ItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ProductDetails()));
      },
      child: Container(
        margin: const EdgeInsets.only(left: 22, top: 22),
        height: 355,
        width: 255,
        child: Column(
          children: [
            Row(
              children: [
                Container(
                    margin: const EdgeInsets.only(left: 20, top: 22),
                    child: const Text("Sony")),
                Container(
                  margin: const EdgeInsets.only(left: 155, top: 22),
                  child: const Icon(Icons.favorite_border_outlined),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 20, top: 10),
                  child: const Text(
                    "Playstation 5",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 33),
                  child: Image.asset(
                    "assets/playstation.png",
                    height: 177,
                    width: 166,
                  ),
                )
              ],
            ),
            Row(
              children: [
                Column(
                  children: [
                    Container(
                        margin: const EdgeInsets.only(left: 20, top: 6),
                        height: 27,
                        width: 27,
                        decoration: BoxDecoration(
                            color: const Color(0xFF333742),
                            borderRadius: BorderRadius.circular(10))),
                    Container(
                        margin: const EdgeInsets.only(left: 20, top: 4),
                        height: 27,
                        width: 27,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)))
                  ],
                ),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 5, top: 5),
                      child: Row(
                        children: [
                          const Text(
                            "\$ 890.00",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "\$900",
                            style: TextStyle(
                                decoration: TextDecoration.lineThrough,
                                fontSize: 12),
                          )
                        ],
                      ),
                      margin: const EdgeInsets.only(left: 70, top: 22),
                      height: 44,
                      width: 125,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 108, 112, 118),
                          borderRadius: BorderRadius.circular(13)),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
        decoration: BoxDecoration(
            color: const Color(0xFF454d5a),
            borderRadius: BorderRadius.circular(31)),
      ),
    );
  }
}
