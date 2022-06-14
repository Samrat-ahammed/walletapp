// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Mycard extends StatelessWidget {
  final double blance;
  final int cardNumber;
  final int expiryMonth;
  final int expiryYear;
  final Color;

  const Mycard(
      {Key? key,
      required this.blance,
      required this.cardNumber,
      required this.expiryMonth,
      required this.expiryYear,
      required this.Color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        width: 300,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Color,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 10,
                ),
                Image.asset(
                  'assets/visa.png',
                  height: 30,
                )
              ],
            ),
            Text(
              "Blance",
              style: TextStyle(color: Colors.white),
            ),
            // SizedBox(
            //   height: 20,
            // ),
            Text("\$" + blance.toString(),
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 36,
                    fontWeight: FontWeight.bold)),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(cardNumber.toString(),
                    style: TextStyle(color: Colors.white)),
                Text(expiryMonth.toString() + "/" + expiryYear.toString(),
                    style: TextStyle(color: Colors.white))
              ],
            )
          ],
        ),
      ),
    );
  }
}
