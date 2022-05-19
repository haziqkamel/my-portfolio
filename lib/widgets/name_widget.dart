import 'package:flutter/material.dart';

class NameWidget extends StatelessWidget {
  const NameWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle style = const TextStyle(
        fontSize: 50, fontWeight: FontWeight.bold, color: Colors.white);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Haziq Kamel', style: style),
      ],
    );
  }
}
