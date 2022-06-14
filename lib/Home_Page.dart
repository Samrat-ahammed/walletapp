// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/utilite/My_botton.dart';
import 'package:flutter_application_1/utilite/My_list_tile.dart';
import 'package:flutter_application_1/utilite/My_pages.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _contorller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.pink,
        child: Icon(
          Icons.monetization_on,
          size: 32,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey[200],
        child: Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.home,
                    size: 32,
                    color: Colors.pink[200],
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.settings,
                    size: 32,
                    color: Colors.grey,
                  ))
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "My",
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        " Cards",
                        style: TextStyle(fontSize: 28),
                      ),
                    ],
                  ),
                  Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          color: Colors.grey, shape: BoxShape.circle),
                      child: Icon(Icons.add))
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              height: 200,
              child: PageView(
                scrollDirection: Axis.horizontal,
                controller: _contorller,
                children: [
                  Mycard(
                    blance: 5250.203,
                    cardNumber: 12345678,
                    expiryMonth: 10,
                    expiryYear: 24,
                    Color: Colors.deepPurple[300],
                  ),
                  Mycard(
                    blance: 342.204,
                    cardNumber: 12345678,
                    expiryMonth: 9,
                    expiryYear: 23,
                    Color: Colors.blue[300],
                  ),
                  Mycard(
                    blance: 420.206,
                    cardNumber: 12345678,
                    expiryMonth: 8,
                    expiryYear: 22,
                    Color: Colors.green[300],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            SmoothPageIndicator(
              controller: _contorller,
              count: 3,
              effect: ExpandingDotsEffect(activeDotColor: Colors.grey.shade700),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Mybutton(
                      iconimagepath: "assets/facebook.png",
                      buttonText: "facebook"),
                  Mybutton(
                      iconimagepath: "assets/instagram.png",
                      buttonText: "instagram"),
                  Mybutton(
                      iconimagepath: "assets/skype.png", buttonText: "skype"),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  Mylisttile(
                      iconImagepath: "assets/plaxo.png",
                      tileTitle: "plaxo",
                      tileSubtitle: "Payment and income"),
                  Mylisttile(
                      iconImagepath: "assets/twitter.png",
                      tileTitle: "Twitter",
                      tileSubtitle: "Transaction and income"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
