import 'package:flutter/material.dart';

class TextTitle extends StatelessWidget {
  final String title;
  const TextTitle({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
          color: Color(0xff091127), fontWeight: FontWeight.bold, fontSize: 28),
    );
  }
}
