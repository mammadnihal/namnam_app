import 'package:flutter/material.dart';
import 'package:receipt/product/category.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({super.key});

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  @override
  Widget build(BuildContext context) {
    double ekranGenisligi = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 204, 0, 0),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      alignment: Alignment.centerLeft,
                      width: ekranGenisligi / 5,
                      child: Image.asset("assets/logo.png")),
                  SizedBox(
                    width: ekranGenisligi / 7,
                    child: FloatingActionButton(
                      onPressed: () {},
                      child: const Icon(
                        Icons.notifications,
                        color: Color.fromARGB(255, 255, 0, 0),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              width:
                  ekranGenisligi, // Buna gerek kalmıyor. Single Childdan dolayı
              height: 100,
              decoration: BoxDecoration(color: Colors.red[500]),
              child: const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Category(
                      imageAssets: "assets/meat.png",
                    ),
                    Category(
                      imageAssets: "assets/meat.png",
                    ),
                    Category(
                      imageAssets: "assets/meat.png",
                    ),
                    Category(
                      imageAssets: "assets/meat.png",
                    ),
                    Category(
                      imageAssets: "assets/meat.png",
                    ),
                    Category(
                      imageAssets: "assets/meat.png",
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
              child: Container(
                /// GOLGE EFEKTI EKLER
                decoration: const BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(76, 0, 0, 0),
                    spreadRadius: 5,
                    blurRadius: 30,
                  )
                ]),
                // ****************************************
                width: ekranGenisligi,
                height: 225,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      "assets/html.png",
                      fit: BoxFit.cover,
                    )),
              ),
            ),
            
            const Text("Günün menüsü",
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
            Container(
              color: const Color.fromRGBO(255, 204, 0, 0),
              width: 500,
              height: 150,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: 500,
                      height: 100,
                      color: const Color.fromARGB(255, 40, 0, 150),
                      child: Image.asset(
                        "assets/masa.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: SizedBox(
                            width: 175,
                            height: 250,
                            child: Image.asset("assets/yemek.png"),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: SizedBox(
                            height: 250,
                            child: Image.asset("assets/4.png"),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: SizedBox(
                            width: 175,
                            height: 250,
                            child: Image.asset("assets/yemek.png"),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: SizedBox(
                            width: 175,
                            height: 250,
                            child: Image.asset("assets/yemek.png"),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
