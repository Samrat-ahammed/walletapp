import 'package:flutter/material.dart';

class Mybutton extends StatelessWidget {
  final iconimagepath;
  final String buttonText;

  const Mybutton(
      {required this.iconimagepath, required this.buttonText, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 80,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(color: Colors.white, blurRadius: 30, spreadRadius: 10)
            ],
            //  borderRadius: BorderRadius.circular(20), color: Colors.grey[100]
          ),
          child: Center(child: Image.asset(iconimagepath)),
        ),
        SizedBox(
          height: 4,
        ),
        Text(
          buttonText,
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.grey[700]),
        )
      ],
    );
  }
}
