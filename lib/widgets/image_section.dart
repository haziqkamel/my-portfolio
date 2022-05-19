import 'package:flutter/material.dart';

class ImageSection extends StatelessWidget {
  const ImageSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Image.network(
        'https://i.ibb.co/5vXnZpY/intro4.png',
        height: 300,
        width: 300,
        fit: BoxFit.cover,
      ),
    );
  }
}
