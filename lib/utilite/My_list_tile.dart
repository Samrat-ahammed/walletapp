// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Mylisttile extends StatelessWidget {
  final String iconImagepath;
  final String tileTitle;
  final String tileSubtitle;

  const Mylisttile(
      {required this.iconImagepath,
      required this.tileTitle,
      required this.tileSubtitle,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Row(
            children: [
              Container(
                height: 80,
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(12)),
                child: Image.asset(iconImagepath),
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    tileTitle,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    tileSubtitle,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: Colors.grey[600]),
                  )
                ],
              ),
              Icon(Icons.arrow_forward_ios)
            ],
          ),
        )
      ],
    );
  }
}
